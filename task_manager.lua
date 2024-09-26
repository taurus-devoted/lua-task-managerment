local TaskManager = {}
TaskManager.__index = TaskManager

function TaskManager:new()
    local self = setmetatable({}, TaskManager)
    self.tasks = {}
    self.next_id = 1
    return self
end

function TaskManager:add_task(name, description)
    local Task = require("task")
    local task = Task:new(self.next_id, name, description)
    table.insert(self.tasks, task)
    self.next_id = self.next_id + 1
end

function TaskManager:remove_task(id)
    for i, task in ipairs(self.tasks) do
        if task.id == id then
            table.remove(self.tasks, i)
            return true
        end
    end
    return false
end

function TaskManager:display_tasks()
    if #self.tasks == 0 then
        print("No tasks available.")
    else
        for _, task in ipairs(self.tasks) do
            print(task:display())
        end
    end
end

return TaskManager
