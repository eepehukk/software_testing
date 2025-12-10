# Usability bug 1 | Manual testing

## Sharing viewers rights to other account

If somebody has shared you a empty todo list and you are listed as a viewer it still gives you an option to add todos. It doesn´t allow you to add the todo but still it gives out the text field to add one. It is unnecessary to even have that text field visible and it might confuse possible users.

## Steps to reproduce

1. start the development enviroment by running "docker compose -f compose.dev.yml up" on your project root folder.
2. Open browser and go to `http://localhost:4321`.
3. Register your account from "To Registration" button.
4. Fill in your details in registration and press "Register" button.
5. Then log out and repeat steps 3 and 4 to create a different account.
6. Then create a new todo list from "New todo list" button.
7. Fill in your todo Name and Description and press "Create" button.
8. Then hover over you todo list and go to share button and press it once.
9. Share the todo list to account you first used.
10. Then log out and login to account you first created.
11. Go to the shared with me todo list and open it.
12. Then you see button "new task" and after pressing it you have text box that indicates that you could add new task but adter filling task you cannot add it. Also the shared todo list doesn´t tell you what rights you have in shared todo list. 