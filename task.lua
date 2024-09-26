local Task = {}
Task.__index = Task

function Task:new(id, name, description)
    local self = setmetatable({}, Task)
    self.id = id
    self.name = name
    self.description = description
    return self
end

function Task:display()
    return string.format("Task ID: %d\nName: %s\nDescription: %s\n", self.id, self.name, self.description)
end

return Task
