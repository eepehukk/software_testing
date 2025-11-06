# Usability bug 1 | Manual testing

## Cloning todo list

If you try to clone twice the same todo list the second time it doesn´t explain why it won´t clone the todo list. The usability problem is that  the program won´t give me specified reason why cloned todo list is not added.

## Steps to reproduce

1. start the development enviroment by running "docker compose -f compose.dev.yml up" on your project root folder.
2. Open browser and go to `http://localhost:4321`.
3. Login to your account by filling your details and press "Login" button" or register your account from "To Registration" button.
4. fill in your details in registration and press "Register" button.
5. The create a new todo list from "New todo list" button.
6. fill in your todo Name and Description and press "Create" button
7. then hover over you todo list and go to clone button and press it twice.
8. Now you can see it only created one clone and there is no error in the frontend
