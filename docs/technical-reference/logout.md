# Logout
The ```logout``` function terminates a users session on the miPod if and only if they are first logged in. This function zeros out the command channel ```c``` of all references to the user, changes the miPod's internal state ```s.logged_in``` to 0, has no parameters, and returns ```void```.

```c
void logout() {
    if (c->login_status) {
        mb_printf("Logging out...\r\n");
        s.logged_in = 0;
        c->login_status = 0;
        memset((void*)c->username, 0, USERNAME_SZ);
        memset((void*)c->pin, 0, MAX_PIN_SZ);
        s.uid = 0;
    } else {
        mb_printf("Not logged in\r\n");
    }
}
```