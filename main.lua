local TaskManager = require("task_manager")

local manager = TaskManager:new()

while true do
    print("Task Manager")
    print("1. Add Task")
    print("2. Remove Task")
    print("3. Display Tasks")
    print("4. Exit")

    io.write("Choose an option: ")
    local choice = tonumber(io.read())

    if choice == 1 then
        io.write("Enter task name: ")
        local name = io.read()
        io.write("Enter task description: ")
        local description = io.read()
        manager:add_task(name, description)
        print("Task added successfully!")
    elseif choice == 2 then
        io.write("Enter task ID to remove: ")
        local id = tonumber(io.read())
        if manager:remove_task(id) then
            print("Task removed successfully!")
        else
            print("Task not found.")
        end
    elseif choice == 3 then
        manager:display_tasks()
    elseif choice == 4 then
        print("Exiting...")
        break
    else
        print("Invalid choice, please try again.")
    end
end
