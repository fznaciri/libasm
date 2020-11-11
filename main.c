#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>

size_t     ft_strlen(char *s);
char    *ft_strcpy(char * dst, const char * src);
int  ft_strcmp(const char *s1, const char *s2);
char *ft_strdup(const char *s1);
ssize_t ft_write(int fd, const void * buf, size_t nbyte);
ssize_t ft_read(int fd, const void * buf, size_t nbyte);

int main()
{
    char dst[10];
    // char   *src = "hi";
    //  printf("my strlen: %lu\nor strlen: %lu\n", ft_strlen("test"), strlen("test"));
    //  printf("dst before %s\n", dst);
    //  ft_strcpy(dst, src);
    //  strcpy(dst, src);
    //  printf("dst: %s\n", dst);
        // printf("%s\n", ft_strdup(""));
        ft_read(-1, dst, 5);
        dst[4] = 0;
        perror("Error");
printf("%s\n", dst);
       printf("%d\n" ,(int)ft_write(1, "test", 0));
    // printf("my_strcmp: %d\n strcmp: %d", ft_strcmp(dst, src), strcmp(dst, src));
    return 0;
}