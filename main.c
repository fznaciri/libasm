#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

typedef struct s_list
{
    void    *data;
    struct s_list     *next;
} t_list;

size_t     ft_strlen(char *s);
char    *ft_strcpy(char * dst, const char * src);
int  ft_strcmp(const char *s1, const char *s2);
char *ft_strdup(const char *s1);
ssize_t ft_write(int fd, const void * buf, size_t nbyte);
ssize_t ft_read(int fd, const void * buf, size_t nbyte);
int		ft_list_size(t_list *lst);
void ft_printlist(t_list *l);
void	ft_list_push_front(t_list **lst, void *data);

void ft_printlist(t_list *l)
{
    t_list *t;

    t = l;
    while (t)
    {
        printf("%s\n", t->data);
        t = t->next;
    }
}

int main()
{
    t_list a, b, c, d;

    t_list *l;

    l = &a;
    a.data = "a";
    a.next = &b;
    b.data = "b";
    b.next = &c;
    c.data = "c";
    c.next = &d;
    d.data = "d";
    d.next = NULL;


    ft_printlist(l);
    printf("list_size: %d\n", ft_list_size(l));
    ft_list_push_front(&l, "e");
    ft_list_push_front(&l, "f");
    ft_list_push_front(&l, "g");
    ft_list_push_front(&l, "h");
    printf("list_size after adding: %d\n", ft_list_size(l));
    ft_printlist(l);
    // char dst[10];
    // char   *src = "hi";
    //  printf("my strlen: %lu\nor strlen: %lu\n", ft_strlen("test"), strlen("test"));
    //  printf("dst before %s\n", dst);
    //  ft_strcpy(dst, src);
    //  strcpy(dst, src);
    //  printf("dst: %s\n", dst);
        // printf("%s\n", ft_strdup(""));
        // ft_read(-1, dst, 5);
        // dst[4] = 0;
        // perror("Error");
        // printf("%s\n", dst);
        // printf("%d\n" ,(int)ft_write(1, "test", 0));
    // printf("my_strcmp: %d\n strcmp: %d", ft_strcmp(dst, src), strcmp(dst, src));
    return 0;
}