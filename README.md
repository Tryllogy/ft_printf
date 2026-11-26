*This project has been created as part of the 42 curriculum by tchemin.*

# ft_printf

A re-implementation of the libc `printf` function, packaged as a static
library (`libftprintf.a`).

## Supported conversions

| Conversion | Output |
|------------|--------|
| `%c` | a single character |
| `%s` | a string (`(null)` for a NULL pointer) |
| `%p` | a pointer address in hexadecimal (`(nil)` for NULL) |
| `%d` / `%i` | a signed decimal integer |
| `%u` | an unsigned decimal integer |
| `%x` / `%X` | an unsigned hexadecimal integer (lower / upper case) |
| `%%` | a literal percent sign |

`ft_printf` returns the number of characters written, like `printf`.

## Build

```bash
make        # builds libftprintf.a
make clean  # removes object files
make fclean # removes objects and the library
make re     # rebuilds from scratch
```

## Usage

```c
#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello %s, you are %d years old (%p)\n", "world", 42, &main);
    return (0);
}
```

```bash
cc -Wall -Wextra -Werror main.c -L. -lftprintf
```
