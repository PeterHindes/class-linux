#include <linux/kernel.h>
#include <linux/linkage.h>
#include <linux/syscalls.h>

SYSCALL_DEFINE3(csci3753_mult, int, number1, int, number2, long *, result)
{
  printk(KERN_ALERT "Multiplying '%d' with '%d'!\n", number1, number2);
  long tmp_result = number1 * number2;
  if(copy_to_user(result, &tmp_result, sizeof(long)))
  {
    printk(KERN_ALERT "Failed to copy data to user space\n");
    return -EFAULT;
  }
  return 0;
}
