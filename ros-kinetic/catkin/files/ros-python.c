#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#ifdef DEBUG
#define D
#else
#define D for (;0;)
#endif

struct path_var {
        struct path_entry * head;
};

struct path_entry {
        char * str;
        struct path_entry * next;
};

/*
 * Add a var to the env list.
 * This does not add duplicates.
 */
void add_entry(struct path_var * list, char * str)
{
        struct path_entry * tmp = malloc(sizeof(*tmp));
        tmp->str = strdup(str);
        tmp->next = list->head;
        list->head = tmp;
        D fprintf(stderr, "Added \"%s\"\n", tmp->str);
}

void path_from_string(struct path_var * path_var, const char * str)
{
        if (str == NULL) return;
        size_t len_s = strlen(str);
        struct path_entry *tmp, **head = &path_var->head;
        for (; *str;) {
                char *p, *part = malloc(len_s);
                for (p = part; *str;) {
                        if (*str == ':') break;
                        *(p++) = *(str++);
                } if (*str) str++;
                *(p++) = '\0';
                tmp = malloc(sizeof(*tmp));
                tmp->next = (*head);
                if (p == part) break;
                D fprintf(stderr, "Added \"%s\"\n", part);
                tmp->str = strndup(part, p - part);
                path_var->head = tmp;
                free(part);
        }
}

char * string_from_path(struct path_var * path_var)
{
        if (path_var->head == NULL) return "";
        struct path_entry ** iter = &path_var->head;
        size_t size = 0, capacity = 128, to_add = 0;
        char * ret = malloc(capacity);

        for (; (*iter); iter = &(*iter)->next) {
                to_add = strlen((*iter)->str);
                if (to_add + size + 1 >= capacity) {
                        capacity = capacity << 1;
                        ret = realloc(ret, capacity);
                }

                strcat(ret + size, ":");
                strcat(ret + size + 1, (*iter)->str); 
        } return ret;
}

int main(int argc, char ** argv)
{
        struct path_var python_path;
        python_path.head = NULL;
        char * current_python_path = getenv("PYTHONPATH");
        path_from_string(&python_path, current_python_path);
        if (strstr(argv[0], "lunar")) {
                add_entry(&python_path, "/opt/ros/lunar/lib/python3.5/site-packages");
                add_entry(&python_path, "/opt/ros/lunar/lib64/python3.5/site-packages");
        } else if (strstr(argv[0], "kinetic")) {
                add_entry(&python_path, "/opt/ros/kinetic/lib/python3.5/site-packages");
                add_entry(&python_path, "/opt/ros/kinetic/lib64/python3.5/site-packages");
        } else if (strstr(argv[0], "indigo")) {
                add_entry(&python_path, "/opt/ros/indigo/lib/python3.5/site-packages");
                add_entry(&python_path, "/opt/ros/indigo/lib64/python3.5/site-packages");
        }
                
        char * new_argv[argc + 1];
        int x;

        new_argv[0] = "/usr/bin/python3.5m";
        D fprintf(stderr, "added arg: \"%s\"\n", new_argv[0]);        
        for (x = 1; x < argc; ++x) {
                D fprintf(stderr, "added arg: \"%s\"\n", argv[x]);
                new_argv[x] = argv[x];
        } new_argv[argc] = NULL;

        setenv("PYTHONPATH", string_from_path(&python_path), 1);
        D fprintf(stderr, "running python with PYTHONPATH=\"%s\"\n", getenv("PYTHONPATH"));
        execvp(new_argv[0], new_argv);
        perror("execvp");
        _exit(1);
}
