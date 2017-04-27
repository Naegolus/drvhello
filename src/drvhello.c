#include <linux/module.h>

static int drvhello_init(void) {

	printk("%s: Entry\n", __func__);

	return 0;
}

static void drvhello_exit(void) {

	printk("%s: Done\n", __func__);

}

module_init(drvhello_init);
module_exit(drvhello_exit);

MODULE_AUTHOR("Johannes Natter");
MODULE_DESCRIPTION("Linux driver hello world");
MODULE_LICENSE("GPL");
