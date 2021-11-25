--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]

local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file, ...)
    if ____moduleCache[file] then
        return ____moduleCache[file].value
    end
    if ____modules[file] then
        local module = ____modules[file]
        ____moduleCache[file] = { value = (select("#", ...) > 0) and module(...) or module(file) }
        return ____moduleCache[file].value
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["lualib_bundle"] = function(...) 
function __TS__ArrayIsArray(value)
    return (type(value) == "table") and ((value[1] ~= nil) or (next(value, nil) == nil))
end

function __TS__ArrayConcat(arr1, ...)
    local args = {...}
    local out = {}
    for ____, val in ipairs(arr1) do
        out[#out + 1] = val
    end
    for ____, arg in ipairs(args) do
        if __TS__ArrayIsArray(arg) then
            local argAsArray = arg
            for ____, val in ipairs(argAsArray) do
                out[#out + 1] = val
            end
        else
            out[#out + 1] = arg
        end
    end
    return out
end

function __TS__ArrayEntries(array)
    local key = 0
    return {
        [Symbol.iterator] = function(self)
            return self
        end,
        next = function(self)
            local result = {done = array[key + 1] == nil, value = {key, array[key + 1]}}
            key = key + 1
            return result
        end
    }
end

function __TS__ArrayEvery(arr, callbackfn)
    do
        local i = 0
        while i < #arr do
            if not callbackfn(_G, arr[i + 1], i, arr) then
                return false
            end
            i = i + 1
        end
    end
    return true
end

function __TS__ArrayFilter(arr, callbackfn)
    local result = {}
    do
        local i = 0
        while i < #arr do
            if callbackfn(_G, arr[i + 1], i, arr) then
                result[#result + 1] = arr[i + 1]
            end
            i = i + 1
        end
    end
    return result
end

function __TS__ArrayForEach(arr, callbackFn)
    do
        local i = 0
        while i < #arr do
            callbackFn(_G, arr[i + 1], i, arr)
            i = i + 1
        end
    end
end

function __TS__ArrayFind(arr, predicate)
    local len = #arr
    local k = 0
    while k < len do
        local elem = arr[k + 1]
        if predicate(_G, elem, k, arr) then
            return elem
        end
        k = k + 1
    end
    return nil
end

function __TS__ArrayFindIndex(arr, callbackFn)
    do
        local i = 0
        local len = #arr
        while i < len do
            if callbackFn(_G, arr[i + 1], i, arr) then
                return i
            end
            i = i + 1
        end
    end
    return -1
end

function __TS__ArrayIncludes(self, searchElement, fromIndex)
    if fromIndex == nil then
        fromIndex = 0
    end
    local len = #self
    local k = fromIndex
    if fromIndex < 0 then
        k = len + fromIndex
    end
    if k < 0 then
        k = 0
    end
    for i = k, len do
        if self[i + 1] == searchElement then
            return true
        end
    end
    return false
end

function __TS__ArrayIndexOf(arr, searchElement, fromIndex)
    local len = #arr
    if len == 0 then
        return -1
    end
    local n = 0
    if fromIndex then
        n = fromIndex
    end
    if n >= len then
        return -1
    end
    local k
    if n >= 0 then
        k = n
    else
        k = len + n
        if k < 0 then
            k = 0
        end
    end
    do
        local i = k
        while i < len do
            if arr[i + 1] == searchElement then
                return i
            end
            i = i + 1
        end
    end
    return -1
end

function __TS__ArrayJoin(self, separator)
    if separator == nil then
        separator = ","
    end
    local result = ""
    for index, value in ipairs(self) do
        if index > 1 then
            result = result .. separator
        end
        result = result .. tostring(value)
    end
    return result
end

function __TS__ArrayMap(arr, callbackfn)
    local newArray = {}
    do
        local i = 0
        while i < #arr do
            newArray[i + 1] = callbackfn(_G, arr[i + 1], i, arr)
            i = i + 1
        end
    end
    return newArray
end

function __TS__ArrayPush(arr, ...)
    local items = {...}
    for ____, item in ipairs(items) do
        arr[#arr + 1] = item
    end
    return #arr
end

function __TS__ArrayReduce(arr, callbackFn, ...)
    local len = #arr
    local k = 0
    local accumulator = nil
    if select("#", ...) ~= 0 then
        accumulator = select(1, ...)
    elseif len > 0 then
        accumulator = arr[1]
        k = 1
    else
        error("Reduce of empty array with no initial value", 0)
    end
    for i = k, len - 1 do
        accumulator = callbackFn(_G, accumulator, arr[i + 1], i, arr)
    end
    return accumulator
end

function __TS__ArrayReduceRight(arr, callbackFn, ...)
    local len = #arr
    local k = len - 1
    local accumulator = nil
    if select("#", ...) ~= 0 then
        accumulator = select(1, ...)
    elseif len > 0 then
        accumulator = arr[k + 1]
        k = k - 1
    else
        error("Reduce of empty array with no initial value", 0)
    end
    for i = k, 0, -1 do
        accumulator = callbackFn(_G, accumulator, arr[i + 1], i, arr)
    end
    return accumulator
end

function __TS__ArrayReverse(arr)
    local i = 0
    local j = #arr - 1
    while i < j do
        local temp = arr[j + 1]
        arr[j + 1] = arr[i + 1]
        arr[i + 1] = temp
        i = i + 1
        j = j - 1
    end
    return arr
end

function __TS__ArrayShift(arr)
    return table.remove(arr, 1)
end

function __TS__ArrayUnshift(arr, ...)
    local items = {...}
    do
        local i = #items - 1
        while i >= 0 do
            table.insert(arr, 1, items[i + 1])
            i = i - 1
        end
    end
    return #arr
end

function __TS__ArraySort(arr, compareFn)
    if compareFn ~= nil then
        table.sort(
            arr,
            function(a, b) return compareFn(_G, a, b) < 0 end
        )
    else
        table.sort(arr)
    end
    return arr
end

function __TS__ArraySlice(list, first, last)
    local len = #list
    local relativeStart = first or 0
    local k
    if relativeStart < 0 then
        k = math.max(len + relativeStart, 0)
    else
        k = math.min(relativeStart, len)
    end
    local relativeEnd = last
    if last == nil then
        relativeEnd = len
    end
    local final
    if relativeEnd < 0 then
        final = math.max(len + relativeEnd, 0)
    else
        final = math.min(relativeEnd, len)
    end
    local out = {}
    local n = 0
    while k < final do
        out[n + 1] = list[k + 1]
        k = k + 1
        n = n + 1
    end
    return out
end

function __TS__ArraySome(arr, callbackfn)
    do
        local i = 0
        while i < #arr do
            if callbackfn(_G, arr[i + 1], i, arr) then
                return true
            end
            i = i + 1
        end
    end
    return false
end

function __TS__ArraySplice(list, ...)
    local len = #list
    local actualArgumentCount = select("#", ...)
    local start = select(1, ...)
    local deleteCount = select(2, ...)
    local actualStart
    if start < 0 then
        actualStart = math.max(len + start, 0)
    else
        actualStart = math.min(start, len)
    end
    local itemCount = math.max(actualArgumentCount - 2, 0)
    local actualDeleteCount
    if actualArgumentCount == 0 then
        actualDeleteCount = 0
    elseif actualArgumentCount == 1 then
        actualDeleteCount = len - actualStart
    else
        actualDeleteCount = math.min(
            math.max(deleteCount or 0, 0),
            len - actualStart
        )
    end
    local out = {}
    do
        local k = 0
        while k < actualDeleteCount do
            local from = actualStart + k
            if list[from + 1] then
                out[k + 1] = list[from + 1]
            end
            k = k + 1
        end
    end
    if itemCount < actualDeleteCount then
        do
            local k = actualStart
            while k < (len - actualDeleteCount) do
                local from = k + actualDeleteCount
                local to = k + itemCount
                if list[from + 1] then
                    list[to + 1] = list[from + 1]
                else
                    list[to + 1] = nil
                end
                k = k + 1
            end
        end
        do
            local k = len
            while k > ((len - actualDeleteCount) + itemCount) do
                list[k] = nil
                k = k - 1
            end
        end
    elseif itemCount > actualDeleteCount then
        do
            local k = len - actualDeleteCount
            while k > actualStart do
                local from = (k + actualDeleteCount) - 1
                local to = (k + itemCount) - 1
                if list[from + 1] then
                    list[to + 1] = list[from + 1]
                else
                    list[to + 1] = nil
                end
                k = k - 1
            end
        end
    end
    local j = actualStart
    for i = 3, actualArgumentCount do
        list[j + 1] = select(i, ...)
        j = j + 1
    end
    do
        local k = #list - 1
        while k >= ((len - actualDeleteCount) + itemCount) do
            list[k + 1] = nil
            k = k - 1
        end
    end
    return out
end

function __TS__ArrayToObject(array)
    local object = {}
    do
        local i = 0
        while i < #array do
            object[i] = array[i + 1]
            i = i + 1
        end
    end
    return object
end

function __TS__ArrayFlat(array, depth)
    if depth == nil then
        depth = 1
    end
    local result = {}
    for ____, value in ipairs(array) do
        if (depth > 0) and __TS__ArrayIsArray(value) then
            result = __TS__ArrayConcat(
                result,
                __TS__ArrayFlat(value, depth - 1)
            )
        else
            result[#result + 1] = value
        end
    end
    return result
end

function __TS__ArrayFlatMap(array, callback)
    local result = {}
    do
        local i = 0
        while i < #array do
            local value = callback(_G, array[i + 1], i, array)
            if (type(value) == "table") and __TS__ArrayIsArray(value) then
                result = __TS__ArrayConcat(result, value)
            else
                result[#result + 1] = value
            end
            i = i + 1
        end
    end
    return result
end

function __TS__ArraySetLength(arr, length)
    if (((length < 0) or (length ~= length)) or (length == math.huge)) or (math.floor(length) ~= length) then
        error(
            "invalid array length: " .. tostring(length),
            0
        )
    end
    do
        local i = #arr - 1
        while i >= length do
            arr[i + 1] = nil
            i = i - 1
        end
    end
    return length
end

____symbolMetatable = {
    __tostring = function(self)
        return ("Symbol(" .. (self.description or "")) .. ")"
    end
}
function __TS__Symbol(description)
    return setmetatable({description = description}, ____symbolMetatable)
end
Symbol = {
    iterator = __TS__Symbol("Symbol.iterator"),
    hasInstance = __TS__Symbol("Symbol.hasInstance"),
    species = __TS__Symbol("Symbol.species"),
    toStringTag = __TS__Symbol("Symbol.toStringTag")
}

function __TS__InstanceOf(obj, classTbl)
    if type(classTbl) ~= "table" then
        error("Right-hand side of 'instanceof' is not an object", 0)
    end
    if classTbl[Symbol.hasInstance] ~= nil then
        return not (not classTbl[Symbol.hasInstance](classTbl, obj))
    end
    if type(obj) == "table" then
        local luaClass = obj.constructor
        while luaClass ~= nil do
            if luaClass == classTbl then
                return true
            end
            luaClass = luaClass.____super
        end
    end
    return false
end

function __TS__New(target, ...)
    local instance = setmetatable({}, target.prototype)
    instance:____constructor(...)
    return instance
end

function __TS__AsyncAwaiter(generator)
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            local adopt, fulfilled, rejected, step, asyncCoroutine
            function adopt(self, value)
                return ((__TS__InstanceOf(value, __TS__Promise) and (function() return value end)) or (function() return __TS__Promise.resolve(value) end))()
            end
            function fulfilled(self, value)
                local success, errorOrErrorHandler, resultOrError = coroutine.resume(asyncCoroutine, value)
                if success then
                    step(_G, resultOrError, errorOrErrorHandler)
                else
                    reject(_G, resultOrError)
                end
            end
            function rejected(self, handler)
                if handler then
                    return function(____, value)
                        local success, valueOrError = pcall(handler, value)
                        if success then
                            step(_G, valueOrError, handler)
                        else
                            reject(_G, valueOrError)
                        end
                    end
                else
                    return function(____, value)
                        reject(_G, value)
                    end
                end
            end
            function step(self, result, errorHandler)
                if coroutine.status(asyncCoroutine) == "dead" then
                    resolve(_G, result)
                else
                    (function()
                        local ____self = adopt(_G, result)
                        return ____self["then"](
                            ____self,
                            fulfilled,
                            rejected(_G, errorHandler)
                        )
                    end)()
                end
            end
            asyncCoroutine = coroutine.create(generator)
            local success, errorOrErrorHandler, resultOrError = coroutine.resume(asyncCoroutine)
            if success then
                step(_G, resultOrError, errorOrErrorHandler)
            else
                reject(_G, errorOrErrorHandler)
            end
        end
    )
end
function __TS__Await(errorHandler, thing)
    return coroutine.yield(errorHandler, thing)
end

function __TS__Class(self)
    local c = {prototype = {}}
    c.prototype.__index = c.prototype
    c.prototype.constructor = c
    return c
end

function __TS__ClassExtends(target, base)
    target.____super = base
    local staticMetatable = setmetatable({__index = base}, base)
    setmetatable(target, staticMetatable)
    local baseMetatable = getmetatable(base)
    if baseMetatable then
        if type(baseMetatable.__index) == "function" then
            staticMetatable.__index = baseMetatable.__index
        end
        if type(baseMetatable.__newindex) == "function" then
            staticMetatable.__newindex = baseMetatable.__newindex
        end
    end
    setmetatable(target.prototype, base.prototype)
    if type(base.prototype.__index) == "function" then
        target.prototype.__index = base.prototype.__index
    end
    if type(base.prototype.__newindex) == "function" then
        target.prototype.__newindex = base.prototype.__newindex
    end
    if type(base.prototype.__tostring) == "function" then
        target.prototype.__tostring = base.prototype.__tostring
    end
end

function __TS__CloneDescriptor(____bindingPattern0)
    local enumerable
    enumerable = ____bindingPattern0.enumerable
    local configurable
    configurable = ____bindingPattern0.configurable
    local get
    get = ____bindingPattern0.get
    local set
    set = ____bindingPattern0.set
    local writable
    writable = ____bindingPattern0.writable
    local value
    value = ____bindingPattern0.value
    local descriptor = {enumerable = enumerable == true, configurable = configurable == true}
    local hasGetterOrSetter = (get ~= nil) or (set ~= nil)
    local hasValueOrWritableAttribute = (writable ~= nil) or (value ~= nil)
    if hasGetterOrSetter and hasValueOrWritableAttribute then
        error("Invalid property descriptor. Cannot both specify accessors and a value or writable attribute.", 0)
    end
    if get or set then
        descriptor.get = get
        descriptor.set = set
    else
        descriptor.value = value
        descriptor.writable = writable == true
    end
    return descriptor
end

function __TS__ObjectGetOwnPropertyDescriptor(object, key)
    local metatable = getmetatable(object)
    if not metatable then
        return
    end
    if not rawget(metatable, "_descriptors") then
        return
    end
    return rawget(metatable, "_descriptors")[key]
end

function ____descriptorIndex(self, key)
    local value = rawget(self, key)
    if value ~= nil then
        return value
    end
    local metatable = getmetatable(self)
    while metatable do
        local rawResult = rawget(metatable, key)
        if rawResult ~= nil then
            return rawResult
        end
        local descriptors = rawget(metatable, "_descriptors")
        if descriptors then
            local descriptor = descriptors[key]
            if descriptor then
                if descriptor.get then
                    return descriptor.get(self)
                end
                return descriptor.value
            end
        end
        metatable = getmetatable(metatable)
    end
end
function ____descriptorNewindex(self, key, value)
    local metatable = getmetatable(self)
    while metatable do
        local descriptors = rawget(metatable, "_descriptors")
        if descriptors then
            local descriptor = descriptors[key]
            if descriptor then
                if descriptor.set then
                    descriptor.set(self, value)
                else
                    if descriptor.writable == false then
                        error(
                            ((("Cannot assign to read only property '" .. key) .. "' of object '") .. tostring(self)) .. "'",
                            0
                        )
                    end
                    descriptor.value = value
                end
                return
            end
        end
        metatable = getmetatable(metatable)
    end
    rawset(self, key, value)
end
function __TS__SetDescriptor(target, key, desc, isPrototype)
    if isPrototype == nil then
        isPrototype = false
    end
    local metatable = ((isPrototype and (function() return target end)) or (function() return getmetatable(target) end))()
    if not metatable then
        metatable = {}
        setmetatable(target, metatable)
    end
    local value = rawget(target, key)
    if value ~= nil then
        rawset(target, key, nil)
    end
    if not rawget(metatable, "_descriptors") then
        metatable._descriptors = {}
    end
    local descriptor = __TS__CloneDescriptor(desc)
    metatable._descriptors[key] = descriptor
    metatable.__index = ____descriptorIndex
    metatable.__newindex = ____descriptorNewindex
end

function __TS__ObjectAssign(to, ...)
    local sources = {...}
    if to == nil then
        return to
    end
    for ____, source in ipairs(sources) do
        for key in pairs(source) do
            to[key] = source[key]
        end
    end
    return to
end

function __TS__Decorate(decorators, target, key, desc)
    local result = target
    do
        local i = #decorators
        while i >= 0 do
            local decorator = decorators[i + 1]
            if decorator then
                local oldResult = result
                if key == nil then
                    result = decorator(_G, result)
                elseif desc == true then
                    local value = rawget(target, key)
                    local descriptor = __TS__ObjectGetOwnPropertyDescriptor(target, key) or ({configurable = true, writable = true, value = value})
                    local desc = decorator(_G, target, key, descriptor) or descriptor
                    local isSimpleValue = (((desc.configurable == true) and (desc.writable == true)) and (not desc.get)) and (not desc.set)
                    if isSimpleValue then
                        rawset(target, key, desc.value)
                    else
                        __TS__SetDescriptor(
                            target,
                            key,
                            __TS__ObjectAssign({}, descriptor, desc)
                        )
                    end
                elseif desc == false then
                    result = decorator(_G, target, key, desc)
                else
                    result = decorator(_G, target, key)
                end
                result = result or oldResult
            end
            i = i - 1
        end
    end
    return result
end

function __TS__DecorateParam(paramIndex, decorator)
    return function(____, target, key) return decorator(_G, target, key, paramIndex) end
end

function __TS__ObjectGetOwnPropertyDescriptors(object)
    local metatable = getmetatable(object)
    if not metatable then
        return {}
    end
    return rawget(metatable, "_descriptors") or ({})
end

function __TS__Delete(target, key)
    local descriptors = __TS__ObjectGetOwnPropertyDescriptors(target)
    local descriptor = descriptors[key]
    if descriptor then
        if not descriptor.configurable then
            error(
                ((("Cannot delete property " .. tostring(key)) .. " of ") .. tostring(target)) .. ".",
                0
            )
        end
        descriptors[key] = nil
        return true
    end
    if target[key] ~= nil then
        target[key] = nil
        return true
    end
    return false
end

function __TS__StringAccess(self, index)
    if (index >= 0) and (index < #self) then
        return string.sub(self, index + 1, index + 1)
    end
end

function __TS__DelegatedYield(iterable)
    if type(iterable) == "string" then
        for index = 0, #iterable - 1 do
            coroutine.yield(
                __TS__StringAccess(iterable, index)
            )
        end
    elseif iterable.____coroutine ~= nil then
        local co = iterable.____coroutine
        while true do
            local status, value = coroutine.resume(co)
            if not status then
                error(value, 0)
            end
            if coroutine.status(co) == "dead" then
                return value
            else
                coroutine.yield(value)
            end
        end
    elseif iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        while true do
            local result = iterator:next()
            if result.done then
                return result.value
            else
                coroutine.yield(result.value)
            end
        end
    else
        for ____, value in ipairs(iterable) do
            coroutine.yield(value)
        end
    end
end

function __TS__GetErrorStack(self, constructor)
    local level = 1
    while true do
        local info = debug.getinfo(level, "f")
        level = level + 1
        if not info then
            level = 1
            break
        elseif info.func == constructor then
            break
        end
    end
    return debug.traceback(nil, level)
end
function __TS__WrapErrorToString(self, getDescription)
    return function(self)
        local description = getDescription(self)
        local caller = debug.getinfo(3, "f")
        if (_VERSION == "Lua 5.1") or (caller and (caller.func ~= error)) then
            return description
        else
            return (tostring(description) .. "\n") .. self.stack
        end
    end
end
function __TS__InitErrorClass(self, Type, name)
    Type.name = name
    return setmetatable(
        Type,
        {
            __call = function(____, _self, message) return __TS__New(Type, message) end
        }
    )
end
Error = __TS__InitErrorClass(
    _G,
    (function()
        local ____ = __TS__Class()
        ____.name = ""
        function ____.prototype.____constructor(self, message)
            if message == nil then
                message = ""
            end
            self.message = message
            self.name = "Error"
            self.stack = __TS__GetErrorStack(_G, self.constructor.new)
            local metatable = getmetatable(self)
            if not metatable.__errorToStringPatched then
                metatable.__errorToStringPatched = true
                metatable.__tostring = __TS__WrapErrorToString(_G, metatable.__tostring)
            end
        end
        function ____.prototype.__tostring(self)
            return (((self.message ~= "") and (function() return (self.name .. ": ") .. self.message end)) or (function() return self.name end))()
        end
        return ____
    end)(),
    "Error"
)
for ____, errorName in ipairs({"RangeError", "ReferenceError", "SyntaxError", "TypeError", "URIError"}) do
    _G[errorName] = __TS__InitErrorClass(
        _G,
        (function()
            local ____ = __TS__Class()
            ____.name = ____.name
            __TS__ClassExtends(____, Error)
            function ____.prototype.____constructor(self, ...)
                Error.prototype.____constructor(self, ...)
                self.name = errorName
            end
            return ____
        end)(),
        errorName
    )
end

__TS__Unpack = table.unpack or unpack

function __TS__FunctionBind(fn, thisArg, ...)
    local boundArgs = {...}
    return function(____, ...)
        local args = {...}
        do
            local i = 0
            while i < #boundArgs do
                table.insert(args, i + 1, boundArgs[i + 1])
                i = i + 1
            end
        end
        return fn(
            thisArg,
            __TS__Unpack(args)
        )
    end
end

function __TS__GeneratorIterator(self)
    return self
end
function __TS__GeneratorNext(self, ...)
    local co = self.____coroutine
    if coroutine.status(co) == "dead" then
        return {done = true}
    end
    local status, value = coroutine.resume(co, ...)
    if not status then
        error(value, 0)
    end
    return {
        value = value,
        done = coroutine.status(co) == "dead"
    }
end
function __TS__Generator(fn)
    return function(...)
        local args = {...}
        local argsLength = select("#", ...)
        return {
            ____coroutine = coroutine.create(
                function() return fn(
                    (unpack or table.unpack)(args, 1, argsLength)
                ) end
            ),
            [Symbol.iterator] = __TS__GeneratorIterator,
            next = __TS__GeneratorNext
        }
    end
end

function __TS__InstanceOfObject(value)
    local valueType = type(value)
    return (valueType == "table") or (valueType == "function")
end

function __TS__IteratorGeneratorStep(self)
    local co = self.____coroutine
    local status, value = coroutine.resume(co)
    if not status then
        error(value, 0)
    end
    if coroutine.status(co) == "dead" then
        return
    end
    return true, value
end
function __TS__IteratorIteratorStep(self)
    local result = self:next()
    if result.done then
        return
    end
    return true, result.value
end
function __TS__IteratorStringStep(self, index)
    index = index + 1
    if index > #self then
        return
    end
    return index, string.sub(self, index, index)
end
function __TS__Iterator(iterable)
    if type(iterable) == "string" then
        return __TS__IteratorStringStep, iterable, 0
    elseif iterable.____coroutine ~= nil then
        return __TS__IteratorGeneratorStep, iterable
    elseif iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        return __TS__IteratorIteratorStep, iterator
    else
        return ipairs(iterable)
    end
end

Map = (function()
    local Map = __TS__Class()
    Map.name = "Map"
    function Map.prototype.____constructor(self, entries)
        self[Symbol.toStringTag] = "Map"
        self.items = {}
        self.size = 0
        self.nextKey = {}
        self.previousKey = {}
        if entries == nil then
            return
        end
        local iterable = entries
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                local value = result.value
                self:set(value[1], value[2])
            end
        else
            local array = entries
            for ____, kvp in ipairs(array) do
                self:set(kvp[1], kvp[2])
            end
        end
    end
    function Map.prototype.clear(self)
        self.items = {}
        self.nextKey = {}
        self.previousKey = {}
        self.firstKey = nil
        self.lastKey = nil
        self.size = 0
    end
    function Map.prototype.delete(self, key)
        local contains = self:has(key)
        if contains then
            self.size = self.size - 1
            local next = self.nextKey[key]
            local previous = self.previousKey[key]
            if next and previous then
                self.nextKey[previous] = next
                self.previousKey[next] = previous
            elseif next then
                self.firstKey = next
                self.previousKey[next] = nil
            elseif previous then
                self.lastKey = previous
                self.nextKey[previous] = nil
            else
                self.firstKey = nil
                self.lastKey = nil
            end
            self.nextKey[key] = nil
            self.previousKey[key] = nil
        end
        self.items[key] = nil
        return contains
    end
    function Map.prototype.forEach(self, callback)
        for ____, key in __TS__Iterator(
            self:keys()
        ) do
            callback(_G, self.items[key], key, self)
        end
    end
    function Map.prototype.get(self, key)
        return self.items[key]
    end
    function Map.prototype.has(self, key)
        return (self.nextKey[key] ~= nil) or (self.lastKey == key)
    end
    function Map.prototype.set(self, key, value)
        local isNewValue = not self:has(key)
        if isNewValue then
            self.size = self.size + 1
        end
        self.items[key] = value
        if self.firstKey == nil then
            self.firstKey = key
            self.lastKey = key
        elseif isNewValue then
            self.nextKey[self.lastKey] = key
            self.previousKey[key] = self.lastKey
            self.lastKey = key
        end
        return self
    end
    Map.prototype[Symbol.iterator] = function(self)
        return self:entries()
    end
    function Map.prototype.entries(self)
        local ____ = self
        local items = ____.items
        local nextKey = ____.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = {key, items[key]}}
                key = nextKey[key]
                return result
            end
        }
    end
    function Map.prototype.keys(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    function Map.prototype.values(self)
        local ____ = self
        local items = ____.items
        local nextKey = ____.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = items[key]}
                key = nextKey[key]
                return result
            end
        }
    end
    Map[Symbol.species] = Map
    return Map
end)()

__TS__MathAtan2 = math.atan2 or math.atan

function __TS__Number(value)
    local valueType = type(value)
    if valueType == "number" then
        return value
    elseif valueType == "string" then
        local numberValue = tonumber(value)
        if numberValue then
            return numberValue
        end
        if value == "Infinity" then
            return math.huge
        end
        if value == "-Infinity" then
            return -math.huge
        end
        local stringWithoutSpaces = string.gsub(value, "%s", "")
        if stringWithoutSpaces == "" then
            return 0
        end
        return 0 / 0
    elseif valueType == "boolean" then
        return (value and 1) or 0
    else
        return 0 / 0
    end
end

function __TS__NumberIsFinite(value)
    return (((type(value) == "number") and (value == value)) and (value ~= math.huge)) and (value ~= -math.huge)
end

function __TS__NumberIsNaN(value)
    return value ~= value
end

____radixChars = "0123456789abcdefghijklmnopqrstuvwxyz"
function __TS__NumberToString(self, radix)
    if ((((radix == nil) or (radix == 10)) or (self == math.huge)) or (self == -math.huge)) or (self ~= self) then
        return tostring(self)
    end
    radix = math.floor(radix)
    if (radix < 2) or (radix > 36) then
        error("toString() radix argument must be between 2 and 36", 0)
    end
    local integer, fraction = math.modf(
        math.abs(self)
    )
    local result = ""
    if radix == 8 then
        result = string.format("%o", integer)
    elseif radix == 16 then
        result = string.format("%x", integer)
    else
        repeat
            do
                result = __TS__StringAccess(____radixChars, integer % radix) .. result
                integer = math.floor(integer / radix)
            end
        until not (integer ~= 0)
    end
    if fraction ~= 0 then
        result = result .. "."
        local delta = 1e-16
        repeat
            do
                fraction = fraction * radix
                delta = delta * radix
                local digit = math.floor(fraction)
                result = result .. __TS__StringAccess(____radixChars, digit)
                fraction = fraction - digit
            end
        until not (fraction >= delta)
    end
    if self < 0 then
        result = "-" .. result
    end
    return result
end

function __TS__ObjectDefineProperty(target, key, desc)
    local luaKey = (((type(key) == "number") and (function() return key + 1 end)) or (function() return key end))()
    local value = rawget(target, luaKey)
    local hasGetterOrSetter = (desc.get ~= nil) or (desc.set ~= nil)
    local descriptor
    if hasGetterOrSetter then
        if value ~= nil then
            error(
                "Cannot redefine property: " .. tostring(key),
                0
            )
        end
        descriptor = desc
    else
        local valueExists = value ~= nil
        descriptor = {
            set = desc.set,
            get = desc.get,
            configurable = (((desc.configurable ~= nil) and (function() return desc.configurable end)) or (function() return valueExists end))(),
            enumerable = (((desc.enumerable ~= nil) and (function() return desc.enumerable end)) or (function() return valueExists end))(),
            writable = (((desc.writable ~= nil) and (function() return desc.writable end)) or (function() return valueExists end))(),
            value = (((desc.value ~= nil) and (function() return desc.value end)) or (function() return value end))()
        }
    end
    __TS__SetDescriptor(target, luaKey, descriptor)
    return target
end

function __TS__ObjectEntries(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = {key, obj[key]}
    end
    return result
end

function __TS__ObjectFromEntries(entries)
    local obj = {}
    local iterable = entries
    if iterable[Symbol.iterator] then
        local iterator = iterable[Symbol.iterator](iterable)
        while true do
            local result = iterator:next()
            if result.done then
                break
            end
            local value = result.value
            obj[value[1]] = value[2]
        end
    else
        for ____, entry in ipairs(entries) do
            obj[entry[1]] = entry[2]
        end
    end
    return obj
end

function __TS__ObjectKeys(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = key
    end
    return result
end

function __TS__ObjectRest(target, usedProperties)
    local result = {}
    for property in pairs(target) do
        if not usedProperties[property] then
            result[property] = target[property]
        end
    end
    return result
end

function __TS__ObjectValues(obj)
    local result = {}
    for key in pairs(obj) do
        result[#result + 1] = obj[key]
    end
    return result
end

function __TS__OptionalChainAccess(____table, key)
    if ____table then
        return ____table[key]
    end
    return nil
end

function __TS__OptionalFunctionCall(f, ...)
    if f then
        return f(...)
    end
    return nil
end

function __TS__OptionalMethodCall(____table, methodName, isMethodOptional, ...)
    if ____table then
        local method = ____table[methodName]
        if method then
            return method(____table, ...)
        elseif not isMethodOptional then
            error(methodName .. " is not a function", 0)
        end
    end
    return nil
end

function __TS__ParseFloat(numberString)
    local infinityMatch = string.match(numberString, "^%s*(-?Infinity)")
    if infinityMatch then
        return (((__TS__StringAccess(infinityMatch, 0) == "-") and (function() return -math.huge end)) or (function() return math.huge end))()
    end
    local number = tonumber(
        string.match(numberString, "^%s*(-?%d+%.?%d*)")
    )
    return number or (0 / 0)
end

function __TS__StringSubstr(self, from, length)
    if from ~= from then
        from = 0
    end
    if length ~= nil then
        if (length ~= length) or (length <= 0) then
            return ""
        end
        length = length + from
    end
    if from >= 0 then
        from = from + 1
    end
    return string.sub(self, from, length)
end

function __TS__StringSubstring(self, start, ____end)
    if ____end ~= ____end then
        ____end = 0
    end
    if (____end ~= nil) and (start > ____end) then
        start, ____end = ____end, start
    end
    if start >= 0 then
        start = start + 1
    else
        start = 1
    end
    if (____end ~= nil) and (____end < 0) then
        ____end = 0
    end
    return string.sub(self, start, ____end)
end

__TS__parseInt_base_pattern = "0123456789aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTvVwWxXyYzZ"
function __TS__ParseInt(numberString, base)
    if base == nil then
        base = 10
        local hexMatch = string.match(numberString, "^%s*-?0[xX]")
        if hexMatch then
            base = 16
            numberString = ((string.match(hexMatch, "-") and (function() return "-" .. __TS__StringSubstr(numberString, #hexMatch) end)) or (function() return __TS__StringSubstr(numberString, #hexMatch) end))()
        end
    end
    if (base < 2) or (base > 36) then
        return 0 / 0
    end
    local allowedDigits = (((base <= 10) and (function() return __TS__StringSubstring(__TS__parseInt_base_pattern, 0, base) end)) or (function() return __TS__StringSubstr(__TS__parseInt_base_pattern, 0, 10 + (2 * (base - 10))) end))()
    local pattern = ("^%s*(-?[" .. allowedDigits) .. "]*)"
    local number = tonumber(
        string.match(numberString, pattern),
        base
    )
    if number == nil then
        return 0 / 0
    end
    if number >= 0 then
        return math.floor(number)
    else
        return math.ceil(number)
    end
end

__TS__PromiseState = __TS__PromiseState or ({})
__TS__PromiseState.Pending = 0
__TS__PromiseState[__TS__PromiseState.Pending] = "Pending"
__TS__PromiseState.Fulfilled = 1
__TS__PromiseState[__TS__PromiseState.Fulfilled] = "Fulfilled"
__TS__PromiseState.Rejected = 2
__TS__PromiseState[__TS__PromiseState.Rejected] = "Rejected"
function __TS__PromiseDeferred(self)
    local resolve
    local reject
    local promise = __TS__New(
        __TS__Promise,
        function(____, res, rej)
            resolve = res
            reject = rej
        end
    )
    return {promise = promise, resolve = resolve, reject = reject}
end
function __TS__IsPromiseLike(self, thing)
    return __TS__InstanceOf(thing, __TS__Promise)
end
__TS__Promise = __TS__Class()
__TS__Promise.name = "__TS__Promise"
function __TS__Promise.prototype.____constructor(self, executor)
    self.state = __TS__PromiseState.Pending
    self.fulfilledCallbacks = {}
    self.rejectedCallbacks = {}
    self.finallyCallbacks = {}
    do
        local function ____catch(e)
            self:reject(e)
        end
        local ____try, ____hasReturned = pcall(
            function()
                executor(
                    _G,
                    __TS__FunctionBind(self.resolve, self),
                    __TS__FunctionBind(self.reject, self)
                )
            end
        )
        if not ____try then
            ____hasReturned, ____returnValue = ____catch(____hasReturned)
        end
    end
end
function __TS__Promise.resolve(data)
    local promise = __TS__New(
        __TS__Promise,
        function()
        end
    )
    promise.state = __TS__PromiseState.Fulfilled
    promise.value = data
    return promise
end
function __TS__Promise.reject(reason)
    local promise = __TS__New(
        __TS__Promise,
        function()
        end
    )
    promise.state = __TS__PromiseState.Rejected
    promise.rejectionReason = reason
    return promise
end
__TS__Promise.prototype["then"] = function(self, onFulfilled, onRejected)
    local ____ = __TS__PromiseDeferred(_G)
    local promise = ____.promise
    local resolve = ____.resolve
    local reject = ____.reject
    local isFulfilled = self.state == __TS__PromiseState.Fulfilled
    local isRejected = self.state == __TS__PromiseState.Rejected
    if onFulfilled then
        local internalCallback = self:createPromiseResolvingCallback(onFulfilled, resolve, reject)
        __TS__ArrayPush(self.fulfilledCallbacks, internalCallback)
        if isFulfilled then
            internalCallback(_G, self.value)
        end
    else
        __TS__ArrayPush(
            self.fulfilledCallbacks,
            function() return resolve(_G, nil) end
        )
    end
    if onRejected then
        local internalCallback = self:createPromiseResolvingCallback(onRejected, resolve, reject)
        __TS__ArrayPush(self.rejectedCallbacks, internalCallback)
        if isRejected then
            internalCallback(_G, self.rejectionReason)
        end
    end
    if isFulfilled then
        resolve(_G, self.value)
    end
    if isRejected then
        reject(_G, self.rejectionReason)
    end
    return promise
end
function __TS__Promise.prototype.catch(self, onRejected)
    return self["then"](self, nil, onRejected)
end
function __TS__Promise.prototype.finally(self, onFinally)
    if onFinally then
        __TS__ArrayPush(self.finallyCallbacks, onFinally)
        if self.state ~= __TS__PromiseState.Pending then
            onFinally(_G)
        end
    end
    return self
end
function __TS__Promise.prototype.resolve(self, data)
    if self.state == __TS__PromiseState.Pending then
        self.state = __TS__PromiseState.Fulfilled
        self.value = data
        for ____, callback in ipairs(self.fulfilledCallbacks) do
            callback(_G, data)
        end
        for ____, callback in ipairs(self.finallyCallbacks) do
            callback(_G)
        end
    end
end
function __TS__Promise.prototype.reject(self, reason)
    if self.state == __TS__PromiseState.Pending then
        self.state = __TS__PromiseState.Rejected
        self.rejectionReason = reason
        for ____, callback in ipairs(self.rejectedCallbacks) do
            callback(_G, reason)
        end
        for ____, callback in ipairs(self.finallyCallbacks) do
            callback(_G)
        end
    end
end
function __TS__Promise.prototype.createPromiseResolvingCallback(self, f, resolve, reject)
    return function(____, value)
        do
            local function ____catch(e)
                reject(_G, e)
            end
            local ____try, ____hasReturned = pcall(
                function()
                    self:handleCallbackData(
                        f(_G, value),
                        resolve,
                        reject
                    )
                end
            )
            if not ____try then
                ____hasReturned, ____returnValue = ____catch(____hasReturned)
            end
        end
    end
end
function __TS__Promise.prototype.handleCallbackData(self, data, resolve, reject)
    if __TS__IsPromiseLike(_G, data) then
        local nextpromise = data
        if nextpromise.state == __TS__PromiseState.Fulfilled then
            resolve(_G, nextpromise.value)
        elseif nextpromise.state == __TS__PromiseState.Rejected then
            reject(_G, nextpromise.rejectionReason)
        else
            data["then"](data, resolve, reject)
        end
    else
        resolve(_G, data)
    end
end

function __TS__PromiseAll(iterable)
    local results = {}
    local toResolve = {}
    local numToResolve = 0
    local i = 0
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                results[i + 1] = item.value
            elseif item.state == __TS__PromiseState.Rejected then
                return __TS__Promise.reject(item.rejectionReason)
            else
                numToResolve = numToResolve + 1
                toResolve[i] = item
            end
        else
            results[i + 1] = item
        end
        i = i + 1
    end
    if numToResolve == 0 then
        return __TS__Promise.resolve(results)
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for index, promise in pairs(toResolve) do
                promise["then"](
                    promise,
                    function(____, data)
                        results[index + 1] = data
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end,
                    function(____, reason)
                        reject(_G, reason)
                    end
                )
            end
        end
    )
end

function __TS__PromiseAllSettled(iterable)
    local results = {}
    local toResolve = {}
    local numToResolve = 0
    local i = 0
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                results[i + 1] = {status = "fulfilled", value = item.value}
            elseif item.state == __TS__PromiseState.Rejected then
                results[i + 1] = {status = "rejected", reason = item.rejectionReason}
            else
                numToResolve = numToResolve + 1
                toResolve[i] = item
            end
        else
            results[i + 1] = {status = "fulfilled", value = item}
        end
        i = i + 1
    end
    if numToResolve == 0 then
        return __TS__Promise.resolve(results)
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve)
            for index, promise in pairs(toResolve) do
                promise["then"](
                    promise,
                    function(____, data)
                        results[index + 1] = {status = "fulfilled", value = data}
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end,
                    function(____, reason)
                        results[index + 1] = {status = "rejected", reason = reason}
                        numToResolve = numToResolve - 1
                        if numToResolve == 0 then
                            resolve(_G, results)
                        end
                    end
                )
            end
        end
    )
end

function __TS__PromiseAny(iterable)
    local rejections = {}
    local pending = {}
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                return __TS__Promise.resolve(item.value)
            elseif item.state == __TS__PromiseState.Rejected then
                __TS__ArrayPush(rejections, item.rejectionReason)
            else
                __TS__ArrayPush(pending, item)
            end
        else
            return __TS__Promise.resolve(item)
        end
    end
    if #pending == 0 then
        return __TS__Promise.reject("No promises to resolve with .any()")
    end
    local numResolved = 0
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for ____, promise in ipairs(pending) do
                promise["then"](
                    promise,
                    function(____, data)
                        resolve(_G, data)
                    end,
                    function(____, reason)
                        __TS__ArrayPush(rejections, reason)
                        numResolved = numResolved + 1
                        if numResolved == #pending then
                            reject(_G, {name = "AggregateError", message = "All Promises rejected", errors = rejections})
                        end
                    end
                )
            end
        end
    )
end

function __TS__PromiseRace(iterable)
    local pending = {}
    for ____, item in __TS__Iterator(iterable) do
        if __TS__InstanceOf(item, __TS__Promise) then
            if item.state == __TS__PromiseState.Fulfilled then
                return __TS__Promise.resolve(item.value)
            elseif item.state == __TS__PromiseState.Rejected then
                return __TS__Promise.reject(item.rejectionReason)
            else
                __TS__ArrayPush(pending, item)
            end
        else
            return __TS__Promise.resolve(item)
        end
    end
    return __TS__New(
        __TS__Promise,
        function(____, resolve, reject)
            for ____, promise in ipairs(pending) do
                promise["then"](
                    promise,
                    function(____, value) return resolve(_G, value) end,
                    function(____, reason) return reject(_G, reason) end
                )
            end
        end
    )
end

Set = (function()
    local Set = __TS__Class()
    Set.name = "Set"
    function Set.prototype.____constructor(self, values)
        self[Symbol.toStringTag] = "Set"
        self.size = 0
        self.nextKey = {}
        self.previousKey = {}
        if values == nil then
            return
        end
        local iterable = values
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                self:add(result.value)
            end
        else
            local array = values
            for ____, value in ipairs(array) do
                self:add(value)
            end
        end
    end
    function Set.prototype.add(self, value)
        local isNewValue = not self:has(value)
        if isNewValue then
            self.size = self.size + 1
        end
        if self.firstKey == nil then
            self.firstKey = value
            self.lastKey = value
        elseif isNewValue then
            self.nextKey[self.lastKey] = value
            self.previousKey[value] = self.lastKey
            self.lastKey = value
        end
        return self
    end
    function Set.prototype.clear(self)
        self.nextKey = {}
        self.previousKey = {}
        self.firstKey = nil
        self.lastKey = nil
        self.size = 0
    end
    function Set.prototype.delete(self, value)
        local contains = self:has(value)
        if contains then
            self.size = self.size - 1
            local next = self.nextKey[value]
            local previous = self.previousKey[value]
            if next and previous then
                self.nextKey[previous] = next
                self.previousKey[next] = previous
            elseif next then
                self.firstKey = next
                self.previousKey[next] = nil
            elseif previous then
                self.lastKey = previous
                self.nextKey[previous] = nil
            else
                self.firstKey = nil
                self.lastKey = nil
            end
            self.nextKey[value] = nil
            self.previousKey[value] = nil
        end
        return contains
    end
    function Set.prototype.forEach(self, callback)
        for ____, key in __TS__Iterator(
            self:keys()
        ) do
            callback(_G, key, key, self)
        end
    end
    function Set.prototype.has(self, value)
        return (self.nextKey[value] ~= nil) or (self.lastKey == value)
    end
    Set.prototype[Symbol.iterator] = function(self)
        return self:values()
    end
    function Set.prototype.entries(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = {key, key}}
                key = nextKey[key]
                return result
            end
        }
    end
    function Set.prototype.keys(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    function Set.prototype.values(self)
        local nextKey = self.nextKey
        local key = self.firstKey
        return {
            [Symbol.iterator] = function(self)
                return self
            end,
            next = function(self)
                local result = {done = not key, value = key}
                key = nextKey[key]
                return result
            end
        }
    end
    Set[Symbol.species] = Set
    return Set
end)()

WeakMap = (function()
    local WeakMap = __TS__Class()
    WeakMap.name = "WeakMap"
    function WeakMap.prototype.____constructor(self, entries)
        self[Symbol.toStringTag] = "WeakMap"
        self.items = {}
        setmetatable(self.items, {__mode = "k"})
        if entries == nil then
            return
        end
        local iterable = entries
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                local value = result.value
                self.items[value[1]] = value[2]
            end
        else
            for ____, kvp in ipairs(entries) do
                self.items[kvp[1]] = kvp[2]
            end
        end
    end
    function WeakMap.prototype.delete(self, key)
        local contains = self:has(key)
        self.items[key] = nil
        return contains
    end
    function WeakMap.prototype.get(self, key)
        return self.items[key]
    end
    function WeakMap.prototype.has(self, key)
        return self.items[key] ~= nil
    end
    function WeakMap.prototype.set(self, key, value)
        self.items[key] = value
        return self
    end
    WeakMap[Symbol.species] = WeakMap
    return WeakMap
end)()

WeakSet = (function()
    local WeakSet = __TS__Class()
    WeakSet.name = "WeakSet"
    function WeakSet.prototype.____constructor(self, values)
        self[Symbol.toStringTag] = "WeakSet"
        self.items = {}
        setmetatable(self.items, {__mode = "k"})
        if values == nil then
            return
        end
        local iterable = values
        if iterable[Symbol.iterator] then
            local iterator = iterable[Symbol.iterator](iterable)
            while true do
                local result = iterator:next()
                if result.done then
                    break
                end
                self.items[result.value] = true
            end
        else
            for ____, value in ipairs(values) do
                self.items[value] = true
            end
        end
    end
    function WeakSet.prototype.add(self, value)
        self.items[value] = true
        return self
    end
    function WeakSet.prototype.delete(self, value)
        local contains = self:has(value)
        self.items[value] = nil
        return contains
    end
    function WeakSet.prototype.has(self, value)
        return self.items[value] == true
    end
    WeakSet[Symbol.species] = WeakSet
    return WeakSet
end)()

function __TS__SourceMapTraceBack(fileName, sourceMap)
    _G.__TS__sourcemap = _G.__TS__sourcemap or ({})
    _G.__TS__sourcemap[fileName] = sourceMap
    if _G.__TS__originalTraceback == nil then
        _G.__TS__originalTraceback = debug.traceback
        debug.traceback = function(thread, message, level)
            local trace
            if ((thread == nil) and (message == nil)) and (level == nil) then
                trace = _G.__TS__originalTraceback()
            else
                trace = _G.__TS__originalTraceback(thread, message, level)
            end
            if type(trace) ~= "string" then
                return trace
            end
            local function replacer(____, file, srcFile, line)
                local fileSourceMap = _G.__TS__sourcemap[file]
                if fileSourceMap and fileSourceMap[line] then
                    local data = fileSourceMap[line]
                    if type(data) == "number" then
                        return (srcFile .. ":") .. tostring(data)
                    end
                    return (tostring(data.file) .. ":") .. tostring(data.line)
                end
                return (file .. ":") .. line
            end
            local result = string.gsub(
                trace,
                "(%S+)%.lua:(%d+)",
                function(file, line) return replacer(_G, file .. ".lua", file .. ".ts", line) end
            )
            result = string.gsub(
                result,
                "(%[string \"[^\"]+\"%]):(%d+)",
                function(file, line) return replacer(_G, file, "unknown", line) end
            )
            return result
        end
    end
end

function __TS__Spread(iterable)
    local arr = {}
    if type(iterable) == "string" then
        do
            local i = 0
            while i < #iterable do
                arr[#arr + 1] = __TS__StringAccess(iterable, i)
                i = i + 1
            end
        end
    else
        for ____, item in __TS__Iterator(iterable) do
            arr[#arr + 1] = item
        end
    end
    return __TS__Unpack(arr)
end

function __TS__StringCharAt(self, pos)
    if pos ~= pos then
        pos = 0
    end
    if pos < 0 then
        return ""
    end
    return string.sub(self, pos + 1, pos + 1)
end

function __TS__StringCharCodeAt(self, index)
    if index ~= index then
        index = 0
    end
    if index < 0 then
        return 0 / 0
    end
    return string.byte(self, index + 1) or (0 / 0)
end

function __TS__StringConcat(str1, ...)
    local args = {...}
    local out = str1
    for ____, arg in ipairs(args) do
        out = out .. arg
    end
    return out
end

function __TS__StringEndsWith(self, searchString, endPosition)
    if (endPosition == nil) or (endPosition > #self) then
        endPosition = #self
    end
    return string.sub(self, (endPosition - #searchString) + 1, endPosition) == searchString
end

function __TS__StringIncludes(self, searchString, position)
    if not position then
        position = 1
    else
        position = position + 1
    end
    local index = string.find(self, searchString, position, true)
    return index ~= nil
end

function __TS__StringPadEnd(self, maxLength, fillString)
    if fillString == nil then
        fillString = " "
    end
    if maxLength ~= maxLength then
        maxLength = 0
    end
    if (maxLength == -math.huge) or (maxLength == math.huge) then
        error("Invalid string length", 0)
    end
    if (#self >= maxLength) or (#fillString == 0) then
        return self
    end
    maxLength = maxLength - #self
    if maxLength > #fillString then
        fillString = fillString .. string.rep(
            fillString,
            math.floor(maxLength / #fillString)
        )
    end
    return self .. string.sub(
        fillString,
        1,
        math.floor(maxLength)
    )
end

function __TS__StringPadStart(self, maxLength, fillString)
    if fillString == nil then
        fillString = " "
    end
    if maxLength ~= maxLength then
        maxLength = 0
    end
    if (maxLength == -math.huge) or (maxLength == math.huge) then
        error("Invalid string length", 0)
    end
    if (#self >= maxLength) or (#fillString == 0) then
        return self
    end
    maxLength = maxLength - #self
    if maxLength > #fillString then
        fillString = fillString .. string.rep(
            fillString,
            math.floor(maxLength / #fillString)
        )
    end
    return string.sub(
        fillString,
        1,
        math.floor(maxLength)
    ) .. self
end

function __TS__StringReplace(source, searchValue, replaceValue)
    local startPos, endPos = string.find(source, searchValue, nil, true)
    if not startPos then
        return source
    end
    local sub = string.sub
    local before = sub(source, 1, startPos - 1)
    local replacement = (((type(replaceValue) == "string") and (function() return replaceValue end)) or (function() return replaceValue(_G, searchValue, startPos - 1, source) end))()
    local after = sub(source, endPos + 1)
    return (before .. replacement) .. after
end

function __TS__StringReplaceAll(source, searchValue, replaceValue)
    local replacer
    if type(replaceValue) == "string" then
        replacer = function() return replaceValue end
    else
        replacer = replaceValue
    end
    local parts = {}
    local partsIndex = 1
    local sub = string.sub
    if #searchValue == 0 then
        parts[1] = replacer(_G, "", 0, source)
        partsIndex = 2
        for i = 1, #source do
            parts[partsIndex] = sub(source, i, i)
            parts[partsIndex + 1] = replacer(_G, "", i, source)
            partsIndex = partsIndex + 2
        end
    else
        local find = string.find
        local currentPos = 1
        while true do
            local startPos, endPos = find(source, searchValue, currentPos, true)
            if not startPos then
                break
            end
            parts[partsIndex] = sub(source, currentPos, startPos - 1)
            parts[partsIndex + 1] = replacer(_G, searchValue, startPos - 1, source)
            partsIndex = partsIndex + 2
            currentPos = endPos + 1
        end
        parts[partsIndex] = sub(source, currentPos)
    end
    return table.concat(parts)
end

function __TS__StringSlice(self, start, ____end)
    if (start == nil) or (start ~= start) then
        start = 0
    end
    if ____end ~= ____end then
        ____end = 0
    end
    if start >= 0 then
        start = start + 1
    end
    if (____end ~= nil) and (____end < 0) then
        ____end = ____end - 1
    end
    return string.sub(self, start, ____end)
end

function __TS__StringSplit(source, separator, limit)
    if limit == nil then
        limit = 4294967295
    end
    if limit == 0 then
        return {}
    end
    local out = {}
    local index = 0
    local count = 0
    if (separator == nil) or (separator == "") then
        while (index < (#source - 1)) and (count < limit) do
            out[count + 1] = __TS__StringAccess(source, index)
            count = count + 1
            index = index + 1
        end
    else
        local separatorLength = #separator
        local nextIndex = (string.find(source, separator, nil, true) or 0) - 1
        while (nextIndex >= 0) and (count < limit) do
            out[count + 1] = __TS__StringSubstring(source, index, nextIndex)
            count = count + 1
            index = nextIndex + separatorLength
            nextIndex = (string.find(
                source,
                separator,
                math.max(index + 1, 1),
                true
            ) or 0) - 1
        end
    end
    if count < limit then
        out[count + 1] = __TS__StringSubstring(source, index)
    end
    return out
end

function __TS__StringStartsWith(self, searchString, position)
    if (position == nil) or (position < 0) then
        position = 0
    end
    return string.sub(self, position + 1, #searchString + position) == searchString
end

function __TS__StringTrim(self)
    local result = string.gsub(self, "^[%s ﻿]*(.-)[%s ﻿]*$", "%1")
    return result
end

function __TS__StringTrimEnd(self)
    local result = string.gsub(self, "[%s ﻿]*$", "")
    return result
end

function __TS__StringTrimStart(self)
    local result = string.gsub(self, "^[%s ﻿]*", "")
    return result
end

____symbolRegistry = {}
function __TS__SymbolRegistryFor(key)
    if not ____symbolRegistry[key] then
        ____symbolRegistry[key] = __TS__Symbol(key)
    end
    return ____symbolRegistry[key]
end
function __TS__SymbolRegistryKeyFor(sym)
    for key in pairs(____symbolRegistry) do
        if ____symbolRegistry[key] == sym then
            return key
        end
    end
end

function __TS__TypeOf(value)
    local luaType = type(value)
    if luaType == "table" then
        return "object"
    elseif luaType == "nil" then
        return "undefined"
    else
        return luaType
    end
end

 end,
["main"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postPlayerFatalDamage, getCard, getCollectible, useItem, evalCache, useCard, v
local ____isaacscript_2Dcommon = require("lua_modules.isaacscript-common.dist.index")
local addFlag = ____isaacscript_2Dcommon.addFlag
local addTearsStat = ____isaacscript_2Dcommon.addTearsStat
local anyPlayerHasCollectible = ____isaacscript_2Dcommon.anyPlayerHasCollectible
local getMaxCollectibleID = ____isaacscript_2Dcommon.getMaxCollectibleID
local getPlayerIndex = ____isaacscript_2Dcommon.getPlayerIndex
local ModCallbacksCustom = ____isaacscript_2Dcommon.ModCallbacksCustom
local saveDataManager = ____isaacscript_2Dcommon.saveDataManager
local upgradeMod = ____isaacscript_2Dcommon.upgradeMod
local willPlayerRevive = ____isaacscript_2Dcommon.willPlayerRevive
function postPlayerFatalDamage(self, player)
    local backSave = Isaac.GetItemIdByName("Backup Save")
    if (not willPlayerRevive(nil, player)) and player:HasCollectible(backSave) then
        Isaac.ExecuteCommand("stage 1")
        player:RemoveCollectible(backSave)
        do
            local i = 0
            while i < getMaxCollectibleID(nil) do
                do
                    local _ = 0
                    while _ < player:GetCollectibleNum(i) do
                        player:RemoveCollectible(i)
                        _ = _ + 1
                    end
                end
                i = i + 1
            end
        end
        Game().TimeCounter = 0
        return false
    end
    return nil
end
function getCard(self, rng, card)
    if (anyPlayerHasCollectible(
        nil,
        Isaac.GetTrinketIdByName("Marked Card")
    ) and (card < 22)) and (rng:RandomFloat() < (1 / 5)) then
        return card + 55
    end
    return nil
end
function getCollectible(self, collectibleType, itemPool, decrease, seed)
    if v.run.hasBackupSaveActivated and (collectibleType == Isaac.GetItemIdByName("Backup Save")) then
        return CollectibleType.COLLECTIBLE_POOP
    end
    if not v.room.rerolling then
        return nil
    end
    local itemConfig = Isaac.GetItemConfig()
    local collectibleConfig = itemConfig:GetCollectible(collectibleType)
    local reroll = ((collectibleConfig == nil) or (collectibleConfig.Quality <= 1)) or ((collectibleConfig.Quality == 2) and (RNG():RandomFloat() > (1 / 3)))
    if not reroll then
        return nil
    end
    v.room.rerolling = false
    return Game():GetItemPool():GetCollectible(itemPool, decrease, seed)
end
function useItem(self, item, rng, player)
    if ((item == CollectibleType.COLLECTIBLE_D6) or (item == CollectibleType.COLLECTIBLE_ETERNAL_D6)) or (item == CollectibleType.COLLECTIBLE_D100) then
        v.room.rerolling = player:HasTrinket(
            Isaac.GetTrinketIdByName("Loaded Die")
        )
    end
    if item == Isaac.GetItemIdByName("Cheat Program") then
        local stats = v.run.cheatProgramStats:get(
            getPlayerIndex(nil, player)
        )
        if stats == nil then
            stats = {tears = 0, damage = 0, luck = 0}
            v.run.cheatProgramStats:set(
                getPlayerIndex(nil, player),
                stats
            )
        end
        repeat
            local ____switch17 = rng:RandomInt(3)
            local ____cond17 = ____switch17 == 0
            if ____cond17 then
                stats.damage = stats.damage + 0.5
                break
            end
            ____cond17 = ____cond17 or (____switch17 == 1)
            if ____cond17 then
                stats.luck = stats.luck + 0.5
                break
            end
            ____cond17 = ____cond17 or (____switch17 == 2)
            if ____cond17 then
                stats.tears = stats.tears + 0.5
                break
            end
            do
                break
            end
        until true
        v.run.cheatProgramStats:set(
            getPlayerIndex(nil, player),
            stats
        )
        player:AddCacheFlags(
            addFlag(nil, CacheFlag.CACHE_LUCK, CacheFlag.CACHE_DAMAGE, CacheFlag.CACHE_FIREDELAY)
        )
        player:EvaluateItems()
    end
end
function evalCache(self, player, cacheFlag)
    local stat = v.run.cheatProgramStats:get(
        getPlayerIndex(nil, player)
    )
    if stat == nil then
        return
    end
    repeat
        local ____switch20 = cacheFlag
        local ____cond20 = ____switch20 == CacheFlag.CACHE_DAMAGE
        if ____cond20 then
            player.Damage = player.Damage + stat.damage
            break
        end
        ____cond20 = ____cond20 or (____switch20 == CacheFlag.CACHE_FIREDELAY)
        if ____cond20 then
            addTearsStat(nil, player, stat.tears)
            break
        end
        ____cond20 = ____cond20 or (____switch20 == CacheFlag.CACHE_LUCK)
        if ____cond20 then
            player.Luck = player.Luck + stat.luck
            break
        end
        do
            break
        end
    until true
end
function useCard(self, card, player)
    v.room.rerolling = (((card == Card.RUNE_PERTHRO) or (card == Card.CARD_SOUL_EDEN)) or (card == Card.CARD_SOUL_ISAAC)) and player:HasTrinket(
        Isaac.GetTrinketIdByName("Loaded Die")
    )
end
function ____exports.main(self)
    local mod = upgradeMod(
        nil,
        RegisterMod("cheatingMod", 1)
    )
    saveDataManager(nil, "Cheating Mod", v)
    mod:AddCallback(ModCallbacks.MC_POST_GET_COLLECTIBLE, getCollectible)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItem)
    mod:AddCallback(ModCallbacks.MC_USE_CARD, useCard)
    mod:AddCallback(ModCallbacks.MC_GET_CARD, getCard)
    mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, evalCache)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE, postPlayerFatalDamage)
end
v = {
    persistent = {unlocks = {cheatProgram = false, backupSave = false, markedCard = false, loadedDie = false}},
    run = {
        cheatProgramStats = __TS__New(Map),
        hasBackupSaveActivated = false
    },
    room = {rerolling = false}
}
return ____exports
 end,
["bundleEntry"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____main = require("main")
local main = ____main.main
main(nil)
return ____exports
 end,
["lua_modules.isaacscript-common.dist.index"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
do
    local ____reorderedCallbacks = require("lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks")
    local forceNewLevelCallback = ____reorderedCallbacks.forceNewLevelCallback
    local forceNewRoomCallback = ____reorderedCallbacks.forceNewRoomCallback
    ____exports.forceNewLevelCallback = forceNewLevelCallback
    ____exports.forceNewRoomCallback = forceNewRoomCallback
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.cardNameMap")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.collectibleNameMap")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.constants")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____deployJSONRoom = require("lua_modules.isaacscript-common.dist.features.deployJSONRoom")
    local deployJSONRoom = ____deployJSONRoom.deployJSONRoom
    local deployRandomJSONRoom = ____deployJSONRoom.deployRandomJSONRoom
    local emptyRoom = ____deployJSONRoom.emptyRoom
    ____exports.deployJSONRoom = deployJSONRoom
    ____exports.deployRandomJSONRoom = deployRandomJSONRoom
    ____exports.emptyRoom = emptyRoom
end
do
    local ____disableInputs = require("lua_modules.isaacscript-common.dist.features.disableInputs")
    local disableAllInputs = ____disableInputs.disableAllInputs
    local disableAllInputsExceptFor = ____disableInputs.disableAllInputsExceptFor
    local disableMovementInputs = ____disableInputs.disableMovementInputs
    local disableShootingInputs = ____disableInputs.disableShootingInputs
    local enableAllInputs = ____disableInputs.enableAllInputs
    local enableAllInputsExceptFor = ____disableInputs.enableAllInputsExceptFor
    ____exports.disableAllInputs = disableAllInputs
    ____exports.disableAllInputsExceptFor = disableAllInputsExceptFor
    ____exports.disableMovementInputs = disableMovementInputs
    ____exports.disableShootingInputs = disableShootingInputs
    ____exports.enableAllInputs = enableAllInputs
    ____exports.enableAllInputsExceptFor = enableAllInputsExceptFor
end
do
    local ____forgottenSwitch = require("lua_modules.isaacscript-common.dist.features.forgottenSwitch")
    local forgottenSwitch = ____forgottenSwitch.forgottenSwitch
    ____exports.forgottenSwitch = forgottenSwitch
end
do
    local ____getCollectibleItemPoolType = require("lua_modules.isaacscript-common.dist.features.getCollectibleItemPoolType")
    local getCollectibleItemPoolType = ____getCollectibleItemPoolType.getCollectibleItemPoolType
    ____exports.getCollectibleItemPoolType = getCollectibleItemPoolType
end
do
    local ____preventCollectibleRotate = require("lua_modules.isaacscript-common.dist.features.preventCollectibleRotate")
    local preventCollectibleRotate = ____preventCollectibleRotate.preventCollectibleRotate
    ____exports.preventCollectibleRotate = preventCollectibleRotate
end
do
    local ____runInNFrames = require("lua_modules.isaacscript-common.dist.features.runInNFrames")
    local runInNFrames = ____runInNFrames.runInNFrames
    local runNextFrame = ____runInNFrames.runNextFrame
    ____exports.runInNFrames = runInNFrames
    ____exports.runNextFrame = runNextFrame
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____sirenHelpers = require("lua_modules.isaacscript-common.dist.features.sirenHelpers")
    local hasSirenStolenFamiliar = ____sirenHelpers.hasSirenStolenFamiliar
    local setFamiliarNoSirenSteal = ____sirenHelpers.setFamiliarNoSirenSteal
    ____exports.hasSirenStolenFamiliar = hasSirenStolenFamiliar
    ____exports.setFamiliarNoSirenSteal = setFamiliarNoSirenSteal
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.array")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.bitwise")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.card")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.charge")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.collectibles")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.collectibleSet")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.color")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
    local deepCopy = ____deepCopy.deepCopy
    ____exports.deepCopy = deepCopy
end
do
    local ____deepCopyTests = require("lua_modules.isaacscript-common.dist.functions.deepCopyTests")
    local deepCopyTests = ____deepCopyTests.deepCopyTests
    ____exports.deepCopyTests = deepCopyTests
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.doors")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.entity")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.flag")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.gridEntity")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.input")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.json")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.jsonRoom")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.language")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.log")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.math")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.npc")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.pickups")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.player")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.playerHealth")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.pocketItems")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.position")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.random")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.revive")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.rooms")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.spawnCollectible")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.sprite")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.stage")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.tears")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.transformations")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.trinketGive")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.trinkets")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.trinketSet")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.ui")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.util")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.functions.vector")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.pillEffectNameMap")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.transformationMap")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.trinketNameMap")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.types.HealthType")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.types.ModUpgraded")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.types.PocketItemType")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
do
    local ____export = require("lua_modules.isaacscript-common.dist.upgradeMod")
    for ____exportKey, ____exportValue in pairs(____export) do
        if ____exportKey ~= "default" then
            ____exports[____exportKey] = ____exportValue
        end
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, useItemGlowingHourGlass, postGameStartedVanilla, postNewLevelVanilla, postNewRoomVanilla, recordCurrentStage, currentStage, currentStageType, usedGlowingHourGlass, forceNewLevel, forceNewRoom
local postGameStartedReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered")
local postNewLevelReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered")
local postNewRoomReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered")
function hasSubscriptions(self)
    return (postGameStartedReordered:hasSubscriptions() or postNewLevelReordered:hasSubscriptions()) or postNewRoomReordered:hasSubscriptions()
end
function useItemGlowingHourGlass(self)
    usedGlowingHourGlass = true
end
function postGameStartedVanilla(self, isContinued)
    if not hasSubscriptions(nil) then
        return
    end
    postGameStartedReordered:fire(isContinued)
    recordCurrentStage(nil)
    postNewLevelReordered:fire()
    postNewRoomReordered:fire()
end
function postNewLevelVanilla(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if (gameFrameCount == 0) and (not forceNewLevel) then
        return
    end
    forceNewLevel = false
    recordCurrentStage(nil)
    postNewLevelReordered:fire()
    postNewRoomReordered:fire()
end
function postNewRoomVanilla(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    if usedGlowingHourGlass then
        usedGlowingHourGlass = false
        if (currentStage ~= stage) or (currentStageType ~= stageType) then
            recordCurrentStage(nil)
            postNewLevelReordered:fire()
            postNewRoomReordered:fire()
            return
        end
    end
    if (((gameFrameCount == 0) or (currentStage ~= stage)) or (currentStageType ~= stageType)) and (not forceNewRoom) then
        return
    end
    forceNewRoom = false
    postNewRoomReordered:fire()
end
function recordCurrentStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    currentStage = stage
    currentStageType = stageType
end
currentStage = nil
currentStageType = nil
usedGlowingHourGlass = false
forceNewLevel = false
forceNewRoom = false
function ____exports.reorderedCallbacksInit(self, mod)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemGlowingHourGlass, CollectibleType.COLLECTIBLE_GLOWING_HOUR_GLASS)
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStartedVanilla)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, postNewLevelVanilla)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoomVanilla)
end
function ____exports.forceNewLevelCallback(self)
    forceNewLevel = true
end
function ____exports.forceNewRoomCallback(self)
    forceNewRoom = true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, isContinued)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, isContinued)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.cardNameMap"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.CARD_NAME_MAP = __TS__New(Map, {{Card.CARD_FOOL, "0 - The Fool"}, {Card.CARD_MAGICIAN, "I - The Magician"}, {Card.CARD_HIGH_PRIESTESS, "II - The High Priestess"}, {Card.CARD_EMPRESS, "III - The Empress"}, {Card.CARD_EMPEROR, "IV - The Emperor"}, {Card.CARD_HIEROPHANT, "V - The Hierophant"}, {Card.CARD_LOVERS, "VI - The Lovers"}, {Card.CARD_CHARIOT, "VII - The Chariot"}, {Card.CARD_JUSTICE, "VIII - Justice"}, {Card.CARD_HERMIT, "IX - The Hermit"}, {Card.CARD_WHEEL_OF_FORTUNE, "X - Wheel of Fortune"}, {Card.CARD_STRENGTH, "XI - Strength"}, {Card.CARD_HANGED_MAN, "XII - The Hanged Man"}, {Card.CARD_DEATH, "XIII - Death"}, {Card.CARD_TEMPERANCE, "XIV - Temperance"}, {Card.CARD_DEVIL, "XV - The Devil"}, {Card.CARD_TOWER, "XVI - The Tower"}, {Card.CARD_STARS, "XVII - The Stars"}, {Card.CARD_MOON, "XVIII - The Moon"}, {Card.CARD_SUN, "XIX - The Sun"}, {Card.CARD_JUDGEMENT, "XX - Judgement"}, {Card.CARD_WORLD, "XXI - The World"}, {Card.CARD_CLUBS_2, "2 of Clubs"}, {Card.CARD_DIAMONDS_2, "2 of Diamonds"}, {Card.CARD_SPADES_2, "2 of Spades"}, {Card.CARD_HEARTS_2, "2 of Hearts"}, {Card.CARD_ACE_OF_CLUBS, "Ace of Clubs"}, {Card.CARD_ACE_OF_DIAMONDS, "Ace of Diamonds"}, {Card.CARD_ACE_OF_SPADES, "Ace of Spades"}, {Card.CARD_ACE_OF_HEARTS, "Ace of Hearts"}, {Card.CARD_JOKER, "Joker"}, {Card.RUNE_HAGALAZ, "Hagalaz"}, {Card.RUNE_JERA, "Jera"}, {Card.RUNE_EHWAZ, "Ehwaz"}, {Card.RUNE_DAGAZ, "Dagaz"}, {Card.RUNE_ANSUZ, "Ansuz"}, {Card.RUNE_PERTHRO, "Perthro"}, {Card.RUNE_BERKANO, "Berkano"}, {Card.RUNE_ALGIZ, "Algiz"}, {Card.RUNE_BLANK, "Blank Rune"}, {Card.RUNE_BLACK, "Black Rune"}, {Card.CARD_CHAOS, "Chaos Card"}, {Card.CARD_CREDIT, "Credit Card"}, {Card.CARD_RULES, "Rules Card"}, {Card.CARD_HUMANITY, "A Card Against Humanity"}, {Card.CARD_SUICIDE_KING, "Suicide King"}, {Card.CARD_GET_OUT_OF_JAIL, "Get Out Of Jail Free Card"}, {Card.CARD_QUESTIONMARK, "? Card"}, {Card.CARD_DICE_SHARD, "Dice Shard"}, {Card.CARD_EMERGENCY_CONTACT, "Emergency Contact"}, {Card.CARD_HOLY, "Holy Card"}, {Card.CARD_HUGE_GROWTH, "Huge Growth"}, {Card.CARD_ANCIENT_RECALL, "Ancient Recall"}, {Card.CARD_ERA_WALK, "Era Walk"}, {Card.RUNE_SHARD, "Rune Shard"}, {Card.CARD_REVERSE_FOOL, "0 - The Fool?"}, {Card.CARD_REVERSE_MAGICIAN, "I - The Magician?"}, {Card.CARD_REVERSE_HIGH_PRIESTESS, "II - The High Priestess?"}, {Card.CARD_REVERSE_EMPRESS, "III - The Empress?"}, {Card.CARD_REVERSE_EMPEROR, "IV - The Emperor?"}, {Card.CARD_REVERSE_HIEROPHANT, "V - The Hierophant?"}, {Card.CARD_REVERSE_LOVERS, "VI - The Lovers?"}, {Card.CARD_REVERSE_CHARIOT, "VII - The Chariot?"}, {Card.CARD_REVERSE_JUSTICE, "VIII - Justice?"}, {Card.CARD_REVERSE_HERMIT, "IX - The Hermit?"}, {Card.CARD_REVERSE_WHEEL_OF_FORTUNE, "X - Wheel of Fortune?"}, {Card.CARD_REVERSE_STRENGTH, "XI - Strength?"}, {Card.CARD_REVERSE_HANGED_MAN, "XII - The Hanged Man?"}, {Card.CARD_REVERSE_DEATH, "XIII - Death?"}, {Card.CARD_REVERSE_TEMPERANCE, "XIV - Temperance?"}, {Card.CARD_REVERSE_DEVIL, "XV - The Devil?"}, {Card.CARD_REVERSE_TOWER, "XVI - The Tower?"}, {Card.CARD_REVERSE_STARS, "XVII - The Stars?"}, {Card.CARD_REVERSE_MOON, "XVIII - The Moon?"}, {Card.CARD_REVERSE_SUN, "XIX - The Sun?"}, {Card.CARD_REVERSE_JUDGEMENT, "XX - Judgement?"}, {Card.CARD_REVERSE_WORLD, "XXI - The World?"}, {Card.CARD_CRACKED_KEY, "Cracked Key"}, {Card.CARD_QUEEN_OF_HEARTS, "Queen of Hearts"}, {Card.CARD_WILD, "Wild Card"}, {Card.CARD_SOUL_ISAAC, "Soul of Isaac"}, {Card.CARD_SOUL_MAGDALENE, "Soul of Magdalene"}, {Card.CARD_SOUL_CAIN, "Soul of Cain"}, {Card.CARD_SOUL_JUDAS, "Soul of Judas"}, {Card.CARD_SOUL_BLUEBABY, "Soul of ???"}, {Card.CARD_SOUL_EVE, "Soul of Eve"}, {Card.CARD_SOUL_SAMSON, "Soul of Samson"}, {Card.CARD_SOUL_AZAZEL, "Soul of Azazel"}, {Card.CARD_SOUL_LAZARUS, "Soul of Lazarus"}, {Card.CARD_SOUL_EDEN, "Soul of Eden"}, {Card.CARD_SOUL_LOST, "Soul of the Lost"}, {Card.CARD_SOUL_LILITH, "Soul of Lilith"}, {Card.CARD_SOUL_KEEPER, "Soul of the Keeper"}, {Card.CARD_SOUL_APOLLYON, "Soul of Apollyon"}, {Card.CARD_SOUL_FORGOTTEN, "Soul of the Forgotten"}, {Card.CARD_SOUL_BETHANY, "Soul of Bethany"}, {Card.CARD_SOUL_JACOB, "Soul of Jacob and Esau"}})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.collectibleNameMap"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.COLLECTIBLE_NAME_MAP = __TS__New(Map, {{1, "The Sad Onion"}, {2, "The Inner Eye"}, {3, "Spoon Bender"}, {4, "Cricket's Head"}, {5, "My Reflection"}, {6, "Number One"}, {7, "Blood of the Martyr"}, {8, "Brother Bobby"}, {9, "Skatole"}, {10, "Halo of Flies"}, {11, "1up!"}, {12, "Magic Mushroom"}, {13, "The Virus"}, {14, "Roid Rage"}, {15, "<3"}, {16, "Raw Liver"}, {17, "Skeleton Key"}, {18, "A Dollar"}, {19, "Boom!"}, {20, "Transcendence"}, {21, "The Compass"}, {22, "Lunch"}, {23, "Dinner"}, {24, "Dessert"}, {25, "Breakfast"}, {26, "Rotten Meat"}, {27, "Wooden Spoon"}, {28, "The Belt"}, {29, "Mom's Underwear"}, {30, "Mom's Heels"}, {31, "Mom's Lipstick"}, {32, "Wire Coat Hanger"}, {33, "The Bible"}, {34, "The Book of Belial"}, {35, "The Necronomicon"}, {36, "The Poop"}, {37, "Mr. Boom"}, {38, "Tammy's Head"}, {39, "Mom's Bra"}, {40, "Kamikaze!"}, {41, "Mom's Pad"}, {42, "Bob's Rotten Head"}, {44, "Teleport!"}, {45, "Yum Heart"}, {46, "Lucky Foot"}, {47, "Doctor's Remote"}, {48, "Cupid's Arrow"}, {49, "Shoop da Whoop!"}, {50, "Steven"}, {51, "Pentagram"}, {52, "Dr. Fetus"}, {53, "Magneto"}, {54, "Treasure Map"}, {55, "Mom's Eye"}, {56, "Lemon Mishap"}, {57, "Distant Admiration"}, {58, "Book of Shadows"}, {60, "The Ladder"}, {62, "Charm of the Vampire"}, {63, "The Battery"}, {64, "Steam Sale"}, {65, "Anarchist Cookbook"}, {66, "The Hourglass"}, {67, "Sister Maggy"}, {68, "Technology"}, {69, "Chocolate Milk"}, {70, "Growth Hormones"}, {71, "Mini Mush"}, {72, "Rosary"}, {73, "Cube of Meat"}, {74, "A Quarter"}, {75, "PHD"}, {76, "X-Ray Vision"}, {77, "My Little Unicorn"}, {78, "Book of Revelations"}, {79, "The Mark"}, {80, "The Pact"}, {81, "Dead Cat"}, {82, "Lord of the Pit"}, {83, "The Nail"}, {84, "We Need To Go Deeper!"}, {85, "Deck of Cards"}, {86, "Monstro's Tooth"}, {87, "Loki's Horns"}, {88, "Little Chubby"}, {89, "Spider Bite"}, {90, "The Small Rock"}, {91, "Spelunker Hat"}, {92, "Super Bandage"}, {93, "The Gamekid"}, {94, "Sack of Pennies"}, {95, "Robo-Baby"}, {96, "Little C.H.A.D."}, {97, "The Book of Sin"}, {98, "The Relic"}, {99, "Little Gish"}, {100, "Little Steven"}, {101, "The Halo"}, {102, "Mom's Bottle of Pills"}, {103, "The Common Cold"}, {104, "The Parasite"}, {105, "The D6"}, {106, "Mr. Mega"}, {107, "The Pinking Shears"}, {108, "The Wafer"}, {109, "Money = Power"}, {110, "Mom's Contacts"}, {111, "The Bean"}, {112, "Guardian Angel"}, {113, "Demon Baby"}, {114, "Mom's Knife"}, {115, "Ouija Board"}, {116, "9 Volt"}, {117, "Dead Bird"}, {118, "Brimstone"}, {119, "Blood Bag"}, {120, "Odd Mushroom"}, {121, "Odd Mushroom"}, {122, "Whore of Babylon"}, {123, "Monster Manual"}, {124, "Dead Sea Scrolls"}, {125, "Bobby-Bomb"}, {126, "Razor Blade"}, {127, "Forget Me Now"}, {128, "Forever Alone"}, {129, "Bucket of Lard"}, {130, "A Pony"}, {131, "Bomb Bag"}, {132, "A Lump of Coal"}, {133, "Guppy's Paw"}, {134, "Guppy's Tail"}, {135, "IV Bag"}, {136, "Best Friend"}, {137, "Remote Detonator"}, {138, "Stigmata"}, {139, "Mom's Purse"}, {140, "Bob's Curse"}, {141, "Pageant Boy"}, {142, "Scapular"}, {143, "Speed Ball"}, {144, "Bum Friend"}, {145, "Guppy's Head"}, {146, "Prayer Card"}, {147, "Notched Axe"}, {148, "Infestation"}, {149, "Ipecac"}, {150, "Tough Love"}, {151, "The Mulligan"}, {152, "Technology 2"}, {153, "Mutant Spider"}, {154, "Chemical Peel"}, {155, "The Peeper"}, {156, "Habit"}, {157, "Bloody Lust"}, {158, "Crystal Ball"}, {159, "Spirit of the Night"}, {160, "Crack the Sky"}, {161, "Ankh"}, {162, "Celtic Cross"}, {163, "Ghost Baby"}, {164, "The Candle"}, {165, "Cat-o-nine-tails"}, {166, "D20"}, {167, "Harlequin Baby"}, {168, "Epic Fetus"}, {169, "Polyphemus"}, {170, "Daddy Longlegs"}, {171, "Spider Butt"}, {172, "Sacrificial Dagger"}, {173, "Mitre"}, {174, "Rainbow Baby"}, {175, "Dad's Key"}, {176, "Stem Cells"}, {177, "Portable Slot"}, {178, "Holy Water"}, {179, "Fate"}, {180, "The Black Bean"}, {181, "White Pony"}, {182, "Sacred Heart"}, {183, "Tooth Picks"}, {184, "Holy Grail"}, {185, "Dead Dove"}, {186, "Blood Rights"}, {187, "Guppy's Hairball"}, {188, "Abel"}, {189, "SMB Super Fan"}, {190, "Pyro"}, {191, "3 Dollar Bill"}, {192, "Telepathy For Dummies"}, {193, "MEAT!"}, {194, "Magic 8 Ball"}, {195, "Mom's Coin Purse"}, {196, "Squeezy"}, {197, "Jesus Juice"}, {198, "Box"}, {199, "Mom's Key"}, {200, "Mom's Eyeshadow"}, {201, "Iron Bar"}, {202, "Midas' Touch"}, {203, "Humbleing Bundle"}, {204, "Fanny Pack"}, {205, "Sharp Plug"}, {206, "Guillotine"}, {207, "Ball of Bandages"}, {208, "Champion Belt"}, {209, "Butt Bombs"}, {210, "Gnawed Leaf"}, {211, "Spiderbaby"}, {212, "Guppy's Collar"}, {213, "Lost Contact"}, {214, "Anemic"}, {215, "Goat Head"}, {216, "Ceremonial Robes"}, {217, "Mom's Wig"}, {218, "Placenta"}, {219, "Old Bandage"}, {220, "Sad Bombs"}, {221, "Rubber Cement"}, {222, "Anti-Gravity"}, {223, "Pyromaniac"}, {224, "Cricket's Body"}, {225, "Gimpy"}, {226, "Black Lotus"}, {227, "Piggy Bank"}, {228, "Mom's Perfume"}, {229, "Monstro's Lung"}, {230, "Abaddon"}, {231, "Ball of Tar"}, {232, "Stop Watch"}, {233, "Tiny Planet"}, {234, "Infestation 2"}, {236, "E. Coli"}, {237, "Death's Touch"}, {238, "Key Piece 1"}, {239, "Key Piece 2"}, {240, "Experimental Treatment"}, {241, "Contract from Below"}, {242, "Infamy"}, {243, "Trinity Shield"}, {244, "Tech.5"}, {245, "20/20"}, {246, "Blue Map"}, {247, "BFFS!"}, {248, "Hive Mind"}, {249, "There's Options"}, {250, "BOGO Bombs"}, {251, "Starter Deck"}, {252, "Little Baggy"}, {253, "Magic Scab"}, {254, "Blood Clot"}, {255, "Screw"}, {256, "Hot Bombs"}, {257, "Fire Mind"}, {258, "Missing No."}, {259, "Dark Matter"}, {260, "Black Candle"}, {261, "Proptosis"}, {262, "Missing Page 2"}, {263, "Clear Rune"}, {264, "Smart Fly"}, {265, "Dry Baby"}, {266, "Juicy Sack"}, {267, "Robo-Baby 2.0"}, {268, "Rotten Baby"}, {269, "Headless Baby"}, {270, "Leech"}, {271, "Mystery Sack"}, {272, "BBF"}, {273, "Bob's Brain"}, {274, "Best Bud"}, {275, "Lil Brimstone"}, {276, "Isaac's Heart"}, {277, "Lil Haunt"}, {278, "Dark Bum"}, {279, "Big Fan"}, {280, "Sissy Longlegs"}, {281, "Punching Bag"}, {282, "How to Jump"}, {283, "D100"}, {284, "D4"}, {285, "D10"}, {286, "Blank Card"}, {287, "Book of Secrets"}, {288, "Box of Spiders"}, {289, "Red Candle"}, {290, "The Jar"}, {291, "Flush!"}, {292, "Satanic Bible"}, {293, "Head of Krampus"}, {294, "Butter Bean"}, {295, "Magic Fingers"}, {296, "Converter"}, {297, "Pandora's Box"}, {298, "Unicorn Stump"}, {299, "Taurus"}, {300, "Aries"}, {301, "Cancer"}, {302, "Leo"}, {303, "Virgo"}, {304, "Libra"}, {305, "Scorpio"}, {306, "Sagittarius"}, {307, "Capricorn"}, {308, "Aquarius"}, {309, "Pisces"}, {310, "Eve's Mascara"}, {311, "Judas' Shadow"}, {312, "Maggy's Bow"}, {313, "Holy Mantle"}, {314, "Thunder Thighs"}, {315, "Strange Attractor"}, {316, "Cursed Eye"}, {317, "Mysterious Liquid"}, {318, "Gemini"}, {319, "Cain's Other Eye"}, {320, "???'s Only Friend"}, {321, "Samson's Chains"}, {322, "Mongo Baby"}, {323, "Isaac's Tears"}, {324, "Undefined"}, {325, "Scissors"}, {326, "Breath of Life"}, {327, "The Polaroid"}, {328, "The Negative"}, {329, "The Ludovico Technique"}, {330, "Soy Milk"}, {331, "Godhead"}, {332, "Lazarus' Rags"}, {333, "The Mind"}, {334, "The Body"}, {335, "The Soul"}, {336, "Dead Onion"}, {337, "Broken Watch"}, {338, "The Boomerang"}, {339, "Safety Pin"}, {340, "Caffeine Pill"}, {341, "Torn Photo"}, {342, "Blue Cap"}, {343, "Latch Key"}, {344, "Match Book"}, {345, "Synthoil"}, {346, "A Snack"}, {347, "Diplopia"}, {348, "Placebo"}, {349, "Wooden Nickel"}, {350, "Toxic Shock"}, {351, "Mega Bean"}, {352, "Glass Cannon"}, {353, "Bomber Boy"}, {354, "Crack Jacks"}, {355, "Mom's Pearls"}, {356, "Car Battery"}, {357, "Box of Friends"}, {358, "The Wiz"}, {359, "8 Inch Nails"}, {360, "Incubus"}, {361, "Fate's Reward"}, {362, "Lil Chest"}, {363, "Sworn Protector"}, {364, "Friend Zone"}, {365, "Lost Fly"}, {366, "Scatter Bombs"}, {367, "Sticky Bombs"}, {368, "Epiphora"}, {369, "Continuum"}, {370, "Mr. Dolly"}, {371, "Curse of the Tower"}, {372, "Charged Baby"}, {373, "Dead Eye"}, {374, "Holy Light"}, {375, "Host Hat"}, {376, "Restock"}, {377, "Bursting Sack"}, {378, "Number Two"}, {379, "Pupula Duplex"}, {380, "Pay To Play"}, {381, "Eden's Blessing"}, {382, "Friendly Ball"}, {383, "Tear Detonator"}, {384, "Lil Gurdy"}, {385, "Bumbo"}, {386, "D12"}, {387, "Censer"}, {388, "Key Bum"}, {389, "Rune Bag"}, {390, "Seraphim"}, {391, "Betrayal"}, {392, "Zodiac"}, {393, "Serpent's Kiss"}, {394, "Marked"}, {395, "Tech X"}, {396, "Ventricle Razor"}, {397, "Tractor Beam"}, {398, "God's Flesh"}, {399, "Maw of the Void"}, {400, "Spear of Destiny"}, {401, "Explosivo"}, {402, "Chaos"}, {403, "Spider Mod"}, {404, "Farting Baby"}, {405, "GB Bug"}, {406, "D8"}, {407, "Purity"}, {408, "Athame"}, {409, "Empty Vessel"}, {410, "Evil Eye"}, {411, "Lusty Blood"}, {412, "Cambion Conception"}, {413, "Immaculate Conception"}, {414, "More Options"}, {415, "Crown of Light"}, {416, "Deep Pockets"}, {417, "Succubus"}, {418, "Fruit Cake"}, {419, "Teleport 2.0"}, {420, "Black Powder"}, {421, "Kidney Bean"}, {422, "Glowing Hour Glass"}, {423, "Circle of Protection"}, {424, "Sack Head"}, {425, "Night Light"}, {426, "Obsessed Fan"}, {427, "Mine Crafter"}, {428, "PJs"}, {429, "Head of the Keeper"}, {430, "Papa Fly"}, {431, "Multidimensional Baby"}, {432, "Glitter Bombs"}, {433, "My Shadow"}, {434, "Jar of Flies"}, {435, "Lil Loki"}, {436, "Milk!"}, {437, "D7"}, {438, "Binky"}, {439, "Mom's Box"}, {440, "Kidney Stone"}, {441, "Mega Blast"}, {442, "Dark Prince's Crown"}, {443, "Apple!"}, {444, "Lead Pencil"}, {445, "Dog Tooth"}, {446, "Dead Tooth"}, {447, "Linger Bean"}, {448, "Shard of Glass"}, {449, "Metal Plate"}, {450, "Eye of Greed"}, {451, "Tarot Cloth"}, {452, "Varicose Veins"}, {453, "Compound Fracture"}, {454, "Polydactyly"}, {455, "Dad's Lost Coin"}, {456, "Midnight Snack"}, {457, "Cone Head"}, {458, "Belly Button"}, {459, "Sinus Infection"}, {460, "Glaucoma"}, {461, "Parasitoid"}, {462, "Eye of Belial"}, {463, "Sulfuric Acid"}, {464, "Glyph of Balance"}, {465, "Analog Stick"}, {466, "Contagion"}, {467, "Finger!"}, {468, "Shade"}, {469, "Depression"}, {470, "Hushy"}, {471, "Lil Monstro"}, {472, "King Baby"}, {473, "Big Chubby"}, {474, "Broken Glass Cannon"}, {475, "Plan C"}, {476, "D1"}, {477, "Void"}, {478, "Pause"}, {479, "Smelter"}, {480, "Compost"}, {481, "Dataminer"}, {482, "Clicker"}, {483, "Mama Mega!"}, {484, "Wait What?"}, {485, "Crooked Penny"}, {486, "Dull Razor"}, {487, "Potato Peeler"}, {488, "Metronome"}, {489, "D infinity"}, {490, "Eden's Soul"}, {491, "Acid Baby"}, {492, "YO LISTEN!"}, {493, "Adrenaline"}, {494, "Jacob's Ladder"}, {495, "Ghost Pepper"}, {496, "Euthanasia"}, {497, "Camo Undies"}, {498, "Duality"}, {499, "Eucharist"}, {500, "Sack of Sacks"}, {501, "Greed's Gullet"}, {502, "Large Zit"}, {503, "Little Horn"}, {504, "Brown Nugget"}, {505, "Poke Go"}, {506, "Backstabber"}, {507, "Sharp Straw"}, {508, "Mom's Razor"}, {509, "Bloodshot Eye"}, {510, "Delirious"}, {511, "Angry Fly"}, {512, "Black Hole"}, {513, "Bozo"}, {514, "Broken Modem"}, {515, "Mystery Gift"}, {516, "Sprinkler"}, {517, "Fast Bombs"}, {518, "Buddy in a Box"}, {519, "Lil Delirium"}, {520, "Jumper Cables"}, {521, "Coupon"}, {522, "Telekinesis"}, {523, "Moving Box"}, {524, "Technology Zero"}, {525, "Leprosy"}, {526, "7 Seals"}, {527, "Mr. ME!"}, {528, "Angelic Prism"}, {529, "Pop!"}, {530, "Death's List"}, {531, "Haemolacria"}, {532, "Lachryphagy"}, {533, "Trisagion"}, {534, "Schoolbag"}, {535, "Blanket"}, {536, "Sacrificial Altar"}, {537, "Lil Spewer"}, {538, "Marbles"}, {539, "Mystery Egg"}, {540, "Flat Stone"}, {541, "Marrow"}, {542, "Slipped Rib"}, {543, "Hallowed Ground"}, {544, "Pointy Rib"}, {545, "Book of the Dead"}, {546, "Dad's Ring"}, {547, "Divorce Papers"}, {548, "Jaw Bone"}, {549, "Brittle Bones"}, {550, "Broken Shovel"}, {551, "Broken Shovel"}, {552, "Mom's Shovel"}, {553, "Mucormycosis"}, {554, "2Spooky"}, {555, "Golden Razor"}, {556, "Sulfur"}, {557, "Fortune Cookie"}, {558, "Eye Sore"}, {559, "120 Volt"}, {560, "It Hurts"}, {561, "Almond Milk"}, {562, "Rock Bottom"}, {563, "Nancy Bombs"}, {564, "A Bar of Soap"}, {565, "Blood Puppy"}, {566, "Dream Catcher"}, {567, "Paschal Candle"}, {568, "Divine Intervention"}, {569, "Blood Oath"}, {570, "Playdough Cookie"}, {571, "Orphan Socks"}, {572, "Eye of the Occult"}, {573, "Immaculate Heart"}, {574, "Monstrance"}, {575, "The Intruder"}, {576, "Dirty Mind"}, {577, "Damocles"}, {578, "Free Lemonade"}, {579, "Spirit Sword"}, {580, "Red Key"}, {581, "Psy Fly"}, {582, "Wavy Cap"}, {583, "Rocket in a Jar"}, {584, "Book of Virtues"}, {585, "Alabaster Box"}, {586, "The Stairway"}, {588, "Sol"}, {589, "Luna"}, {590, "Mercurius"}, {591, "Venus"}, {592, "Terra"}, {593, "Mars"}, {594, "Jupiter"}, {595, "Saturnus"}, {596, "Uranus"}, {597, "Neptunus"}, {598, "Pluto"}, {599, "Voodoo Head"}, {600, "Eye Drops"}, {601, "Act of Contrition"}, {602, "Member Card"}, {603, "Battery Pack"}, {604, "Mom's Bracelet"}, {605, "The Scooper"}, {606, "Ocular Rift"}, {607, "Boiled Baby"}, {608, "Freezer Baby"}, {609, "Eternal D6"}, {610, "Bird Cage"}, {611, "Larynx"}, {612, "Lost Soul"}, {614, "Blood Bombs"}, {615, "Lil Dumpy"}, {616, "Bird's Eye"}, {617, "Lodestone"}, {618, "Rotten Tomato"}, {619, "Birthright"}, {621, "Red Stew"}, {622, "Genesis"}, {623, "Sharp Key"}, {624, "Booster Pack"}, {625, "Mega Mush"}, {626, "Knife Piece 1"}, {627, "Knife Piece 2"}, {628, "Death Certificate"}, {629, "Bot Fly"}, {631, "Meat Cleaver"}, {632, "Evil Charm"}, {633, "Dogma"}, {634, "Purgatory"}, {635, "Stitches"}, {636, "R Key"}, {637, "Knockout Drops"}, {638, "Eraser"}, {639, "Yuck Heart"}, {640, "Urn of Souls"}, {641, "Akeldama"}, {642, "Magic Skin"}, {643, "Revelation"}, {644, "Consolation Prize"}, {645, "Tinytoma"}, {646, "Brimstone Bombs"}, {647, "4.5 Volt"}, {649, "Fruity Plum"}, {650, "Plum Flute"}, {651, "Star of Bethlehem"}, {652, "Cube Baby"}, {653, "Vade Retro"}, {654, "False PHD"}, {655, "Spin to Win"}, {656, "Damocles"}, {657, "Vasculitis"}, {658, "Giant Cell"}, {659, "Tropicamide"}, {660, "Card Reading"}, {661, "Quints"}, {663, "Tooth and Nail"}, {664, "Binge Eater"}, {665, "Guppy's Eye"}, {667, "Strawman"}, {668, "Dad's Note"}, {669, "Sausage"}, {670, "Options?"}, {671, "Candy Heart"}, {672, "A Pound of Flesh"}, {673, "Redemption"}, {674, "Spirit Shackles"}, {675, "Cracked Orb"}, {676, "Empty Heart"}, {677, "Astral Projection"}, {678, "C Section"}, {679, "Lil Abaddon"}, {680, "Montezuma's Revenge"}, {681, "Lil Portal"}, {682, "Worm Friend"}, {683, "Bone Spurs"}, {684, "Hungry Soul"}, {685, "Jar of Wisps"}, {686, "Soul Locket"}, {687, "Friend Finder"}, {688, "Inner Child"}, {689, "Glitched Crown"}, {690, "Belly Jelly"}, {691, "Sacred Orb"}, {692, "Sanguine Bond"}, {693, "The Swarm"}, {694, "Heartbreak"}, {695, "Bloody Gust"}, {696, "Salvation"}, {697, "Vanishing Twin"}, {698, "Twisted Pair"}, {699, "Azazel's Rage"}, {700, "Echo Chamber"}, {701, "Isaac's Tomb"}, {702, "Vengeful Spirit"}, {703, "Esau Jr."}, {704, "Berserk!"}, {705, "Dark Arts"}, {706, "Abyss"}, {707, "Supper"}, {708, "Stapler"}, {709, "Suplex!"}, {710, "Bag of Crafting"}, {711, "Flip"}, {712, "Lemegeton"}, {713, "Sumptorium"}, {714, "Recall"}, {715, "Hold"}, {716, "Keeper's Sack"}, {717, "Keeper's Kin"}, {719, "Keeper's Box"}, {720, "Everything Jar"}, {721, "TMTRAINER"}, {722, "Anima Sola"}, {723, "Spindown Dice"}, {724, "Hypercoagulation"}, {725, "IBS"}, {726, "Hemoptysis"}, {727, "Ghost Bombs"}, {728, "Gello"}, {729, "Decap Attack"}, {730, "Glass Eye"}, {731, "Stye"}, {732, "Mom's Ring"}})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.constants"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.AZAZEL_DEFAULT_BRIMSTONE_DISTANCE = 75.125
____exports.BOMB_EXPLODE_FRAME = 45
____exports.CHARACTERS_WITH_AN_ACTIVE_ITEM = __TS__New(Set, {PlayerType.PLAYER_ISAAC, PlayerType.PLAYER_MAGDALENE, PlayerType.PLAYER_JUDAS, PlayerType.PLAYER_BLUEBABY, PlayerType.PLAYER_EVE, PlayerType.PLAYER_EDEN, PlayerType.PLAYER_THELOST, PlayerType.PLAYER_LILITH, PlayerType.PLAYER_KEEPER, PlayerType.PLAYER_APOLLYON, PlayerType.PLAYER_EDEN_B})
____exports.CHARACTERS_WITH_NO_RED_HEARTS = __TS__New(Set, {PlayerType.PLAYER_BLUEBABY, PlayerType.PLAYER_BLACKJUDAS, PlayerType.PLAYER_JUDAS_B, PlayerType.PLAYER_BLUEBABY_B, PlayerType.PLAYER_THEFORGOTTEN_B, PlayerType.PLAYER_BETHANY_B})
____exports.DEFAULT_ITEM_POOL_TYPE = ItemPoolType.POOL_TREASURE
____exports.DISTANCE_OF_GRID_TILE = 40
____exports.DOOR_HITBOX_DISTANCE = 11
____exports.EGGY_STATE_FRAME_OF_FINAL_SPIDER = 45
____exports.FIRST_GLITCHED_COLLECTIBLE_TYPE = (1 << 32) - 1
____exports.GENESIS_ROOM_VARIANT = 1000
____exports.GENESIS_ROOM_SUBTYPE = 99
____exports.GOLDEN_TRINKET_SHIFT = 1 << 15
____exports.GRID_ENTITY_XML_MAP = __TS__New(Map, {{1000, {GridEntityType.GRID_ROCK, 0}}, {1001, {GridEntityType.GRID_ROCK_BOMB, 0}}, {1002, {GridEntityType.GRID_ROCK_ALT, 0}}, {1003, {GridEntityType.GRID_ROCKT, 0}}, {1008, {GridEntityType.GRID_ROCK_ALT2, 0}}, {1009, {GridEntityType.GRID_ROCK_ALT2, 1}}, {1010, {GridEntityType.GRID_ROCK_SPIKED, 0}}, {1011, {GridEntityType.GRID_ROCK_GOLD, 0}}, {1300, {GridEntityType.GRID_TNT, 0}}, {1490, {GridEntityType.GRID_POOP, 1}}, {1494, {GridEntityType.GRID_POOP, 4}}, {1495, {GridEntityType.GRID_POOP, 2}}, {1496, {GridEntityType.GRID_POOP, 3}}, {1497, {GridEntityType.GRID_POOP, 5}}, {1498, {GridEntityType.GRID_POOP, 6}}, {1500, {GridEntityType.GRID_POOP, 0}}, {1501, {GridEntityType.GRID_POOP, 11}}, {1900, {GridEntityType.GRID_ROCKB, 0}}, {1901, {GridEntityType.GRID_PILLAR, 0}}, {1930, {GridEntityType.GRID_SPIKES, 0}}, {1931, {GridEntityType.GRID_SPIKES_ONOFF, 0}}, {1940, {GridEntityType.GRID_SPIDERWEB, 0}}, {1999, {GridEntityType.GRID_WALL, 0}}, {3000, {GridEntityType.GRID_PIT, 0}}, {3001, {GridEntityType.GRID_PIT, 16}}, {3009, {GridEntityType.GRID_PIT, 0}}, {4000, {GridEntityType.GRID_LOCK, 0}}, {4500, {GridEntityType.GRID_PRESSURE_PLATE, 0}}, {5000, {GridEntityType.GRID_STATUE, 0}}, {5001, {GridEntityType.GRID_STATUE, 1}}, {6100, {GridEntityType.GRID_TELEPORTER, 0}}, {9000, {GridEntityType.GRID_TRAPDOOR, 0}}, {9100, {GridEntityType.GRID_STAIRS, 0}}, {10000, {GridEntityType.GRID_GRAVITY, 0}}})
____exports.GRID_INDEX_CENTER_OF_1X1_ROOM = 67
____exports.GAME_FRAMES_PER_SECOND = 30
____exports.ISAAC_FRAMES_PER_SECOND = 60
____exports.MAX_NUM_DOORS = 8
____exports.MAX_NUM_FAMILIARS = 64
____exports.MAX_NUM_INPUTS = 4
____exports.MAX_PLAYER_HEART_CONTAINERS = 18
____exports.MAX_PLAYER_POCKET_ITEM_SLOTS = 4
____exports.MAX_PLAYER_SPEED_IN_UNITS = 9.8
____exports.MAX_PLAYER_TRINKET_SLOTS = 2
____exports.MAX_ROOM_INDEX = 168
____exports.MAX_VANILLA_COLLECTIBLE_TYPE = CollectibleType.COLLECTIBLE_MOMS_RING
____exports.MOVEMENT_ACTIONS = __TS__New(Set, {ButtonAction.ACTION_LEFT, ButtonAction.ACTION_RIGHT, ButtonAction.ACTION_UP, ButtonAction.ACTION_DOWN})
____exports.ONE_BY_ONE_ROOM_GRID_SIZE = 135
____exports.ROOM_TYPE_TO_ITEM_POOL_TYPE_MAP = __TS__New(Map, {{RoomType.ROOM_SHOP, ItemPoolType.POOL_SHOP}, {RoomType.ROOM_TREASURE, ItemPoolType.POOL_TREASURE}, {RoomType.ROOM_BOSS, ItemPoolType.POOL_BOSS}, {RoomType.ROOM_SECRET, ItemPoolType.POOL_SECRET}, {RoomType.ROOM_CURSE, ItemPoolType.POOL_CURSE}, {RoomType.ROOM_CHALLENGE, ItemPoolType.POOL_BOSS}, {RoomType.ROOM_LIBRARY, ItemPoolType.POOL_LIBRARY}, {RoomType.ROOM_DEVIL, ItemPoolType.POOL_DEVIL}, {RoomType.ROOM_ANGEL, ItemPoolType.POOL_ANGEL}, {RoomType.ROOM_CHEST, ItemPoolType.POOL_GOLDEN_CHEST}, {RoomType.ROOM_BLACK_MARKET, ItemPoolType.POOL_SHOP}, {RoomType.ROOM_PLANETARIUM, ItemPoolType.POOL_PLANETARIUM}, {RoomType.ROOM_ULTRASECRET, ItemPoolType.POOL_ULTRA_SECRET}})
____exports.SINGLE_USE_ACTIVE_COLLECTIBLE_TYPES = __TS__New(Set, {CollectibleType.COLLECTIBLE_FORGET_ME_NOW, CollectibleType.COLLECTIBLE_EDENS_SOUL, CollectibleType.COLLECTIBLE_ALABASTER_BOX, CollectibleType.COLLECTIBLE_PLAN_C, CollectibleType.COLLECTIBLE_MAMA_MEGA, CollectibleType.COLLECTIBLE_SACRIFICIAL_ALTAR, CollectibleType.COLLECTIBLE_DEATH_CERTIFICATE, CollectibleType.COLLECTIBLE_R_KEY})
____exports.SHOOTING_ACTIONS = __TS__New(Set, {ButtonAction.ACTION_SHOOTLEFT, ButtonAction.ACTION_SHOOTRIGHT, ButtonAction.ACTION_SHOOTUP, ButtonAction.ACTION_SHOOTDOWN})
____exports.UI_HEART_WIDTH = 12
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.deployJSONRoom"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postNewRoom, setDecorationsInvisible, respawnPersistentEntities, removeSpecificNPCs, fillRoomWithDecorations, spawnAllEntities, spawnGridEntity, spawnNormalEntity, storePersistentEntity, fixPitGraphics, getPitMap, getPitFrame, FEATURE_NAME, NPCS_TO_NOT_REMOVE, PERSISTENT_ENTITY_TYPES, initialized, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local removeAllBombs = ____entity.removeAllBombs
local removeAllMatchingEntities = ____entity.removeAllMatchingEntities
local removeAllPickups = ____entity.removeAllPickups
local ____gridEntity = require("lua_modules.isaacscript-common.dist.functions.gridEntity")
local convertXMLGridEntityType = ____gridEntity.convertXMLGridEntityType
local getGridEntities = ____gridEntity.getGridEntities
local removeAllGridEntitiesExceptFor = ____gridEntity.removeAllGridEntitiesExceptFor
local setGridEntityInvisible = ____gridEntity.setGridEntityInvisible
local ____jsonRoom = require("lua_modules.isaacscript-common.dist.functions.jsonRoom")
local getRandomJSONRoom = ____jsonRoom.getRandomJSONRoom
local ____npc = require("lua_modules.isaacscript-common.dist.functions.npc")
local getNPCs = ____npc.getNPCs
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local nextSeed = ____random.nextSeed
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local gridToPos = ____rooms.gridToPos
local setRoomCleared = ____rooms.setRoomCleared
local setRoomUncleared = ____rooms.setRoomUncleared
local ____spawnCollectible = require("lua_modules.isaacscript-common.dist.functions.spawnCollectible")
local spawnCollectible = ____spawnCollectible.spawnCollectible
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function postNewRoom(self)
    local roomIndex = getRoomIndex(nil)
    if not v.level.deployedRoomIndexes:has(roomIndex) then
        return
    end
    setDecorationsInvisible(nil)
    respawnPersistentEntities(nil)
end
function setDecorationsInvisible(self)
    local game = Game()
    local room = game:GetRoom()
    local roomIndex = getRoomIndex(nil)
    local decorationGridIndexes = v.level.decorationGridIndexes:get(roomIndex)
    if decorationGridIndexes == nil then
        return
    end
    for ____, gridIndex in ipairs(decorationGridIndexes) do
        local gridEntity = room:GetGridEntity(gridIndex)
        if gridEntity ~= nil then
            setGridEntityInvisible(nil, gridEntity)
        end
    end
end
function respawnPersistentEntities(self)
    local game = Game()
    local room = game:GetRoom()
    local roomIndex = getRoomIndex(nil)
    local persistentEntities = v.level.persistentEntities:get(roomIndex)
    if persistentEntities == nil then
        return
    end
    for ____, persistentEntity in ipairs(persistentEntities) do
        local position = room:GetGridPosition(persistentEntity.gridIndex)
        Isaac.Spawn(persistentEntity.type, persistentEntity.variant, persistentEntity.subType, position, Vector.Zero, nil)
    end
end
function ____exports.emptyRoom(self, fillWithDecorations)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local roomIndex = getRoomIndex(nil)
    v.level.deployedRoomIndexes:add(roomIndex)
    removeAllBombs(nil)
    removeAllPickups(nil)
    removeAllMatchingEntities(nil, EntityType.ENTITY_SLOT)
    removeSpecificNPCs(nil)
    removeAllMatchingEntities(nil, EntityType.ENTITY_EFFECT, EffectVariant.DEVIL)
    removeAllMatchingEntities(nil, EntityType.ENTITY_EFFECT, EffectVariant.ANGEL)
    removeAllGridEntitiesExceptFor(nil, GridEntityType.GRID_WALL, GridEntityType.GRID_DOOR)
    setRoomCleared(nil)
    if fillWithDecorations then
        fillRoomWithDecorations(nil)
    end
end
function removeSpecificNPCs(self)
    local game = Game()
    local room = game:GetRoom()
    for ____, npc in ipairs(
        getNPCs(nil)
    ) do
        do
            if NPCS_TO_NOT_REMOVE:has(npc.Type) then
                goto __continue20
            end
            if (npc:HasEntityFlags(EntityFlag.FLAG_CHARM) or npc:HasEntityFlags(EntityFlag.FLAG_FRIENDLY)) or npc:HasEntityFlags(EntityFlag.FLAG_PERSISTENT) then
                goto __continue20
            end
            npc:ClearEntityFlags(EntityFlag.FLAG_APPEAR)
            npc:Remove()
            if npc.Type == EntityType.ENTITY_FIREPLACE then
                local gridIndex = room:GetGridIndex(npc.Position)
                room:SetGridPath(gridIndex, 0)
            end
        end
        ::__continue20::
    end
end
function fillRoomWithDecorations(self)
    local game = Game()
    local room = game:GetRoom()
    local gridSize = room:GetGridSize()
    local roomIndex = getRoomIndex(nil)
    local decorationGridIndexes = v.level.decorationGridIndexes:get(roomIndex)
    if decorationGridIndexes == nil then
        decorationGridIndexes = {}
        v.level.decorationGridIndexes:set(roomIndex, decorationGridIndexes)
    end
    do
        local gridIndex = 0
        while gridIndex < gridSize do
            do
                local existingGridEntity = room:GetGridEntity(gridIndex)
                if existingGridEntity ~= nil then
                    goto __continue26
                end
                local position = room:GetGridPosition(gridIndex)
                local decoration = Isaac.GridSpawn(GridEntityType.GRID_DECORATION, 0, position, true)
                setGridEntityInvisible(nil, decoration)
                __TS__ArrayPush(decorationGridIndexes, gridIndex)
            end
            ::__continue26::
            gridIndex = gridIndex + 1
        end
    end
end
function spawnAllEntities(self, jsonRoom, seed)
    local shouldUnclearRoom = false
    for ____, spawn in ipairs(jsonRoom.spawn) do
        local xString = spawn["$"].x
        local x = tonumber(xString)
        if x == nil then
            error("Failed to convert the following x coordinate to a number (for a spawn): " .. xString)
        end
        local yString = spawn["$"].y
        local y = tonumber(yString)
        if y == nil then
            error("Failed to convert the following y coordinate to a number (for a spawn): " .. yString)
        end
        if #spawn.entity > 1 then
            error("Stacked entities are not implemented for JSON rooms.")
        end
        local xmlEntity = spawn.entity[1]
        local entityTypeString = xmlEntity["$"].type
        local entityType = tonumber(entityTypeString)
        if entityType == nil then
            error("Failed to convert the entity type to a number: " .. entityTypeString)
        end
        local variantString = xmlEntity["$"].variant
        local variant = tonumber(variantString)
        if variant == nil then
            error(
                "Failed to convert the entity variant to a number: " .. tostring(variant)
            )
        end
        local subTypeString = xmlEntity["$"].subtype
        local subType = tonumber(subTypeString)
        if subType == nil then
            error(
                "Failed to convert the entity sub-type to a number: " .. tostring(subType)
            )
        end
        if entityType >= 1000 then
            spawnGridEntity(nil, entityType, variant, x, y)
        else
            seed = nextSeed(nil, seed)
            local entity = spawnNormalEntity(nil, entityType, variant, subType, x, y, seed)
            local npc = entity:ToNPC()
            if (npc ~= nil) and npc.CanShutDoors then
                shouldUnclearRoom = true
            end
        end
    end
    if shouldUnclearRoom then
        setRoomUncleared(nil)
    end
    return seed
end
function spawnGridEntity(self, xmlEntityType, xmlEntityVariant, x, y)
    local gridEntityArray = convertXMLGridEntityType(nil, xmlEntityType, xmlEntityVariant)
    if gridEntityArray == nil then
        return nil
    end
    local entityType, variant = table.unpack(gridEntityArray)
    local position = gridToPos(nil, x, y)
    local gridEntity = Isaac.GridSpawn(entityType, variant, position, true)
    if entityType == GridEntityType.GRID_PIT then
        local pit = gridEntity:ToPit()
        if pit ~= nil then
            pit:UpdateCollision()
        end
    end
    if entityType == GridEntityType.GRID_POOP then
        local sprite = gridEntity:GetSprite()
        sprite:Play("State1", true)
        sprite:SetLastFrame()
    end
    return gridEntity
end
function spawnNormalEntity(self, entityType, variant, subType, x, y, seed)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local position = gridToPos(nil, x, y)
    local entity
    if (entityType == EntityType.ENTITY_PICKUP) and (variant == PickupVariant.PICKUP_COLLECTIBLE) then
        local options = roomType == RoomType.ROOM_ANGEL
        entity = spawnCollectible(nil, subType, position, seed, options)
    else
        entity = game:Spawn(entityType, variant, position, Vector.Zero, nil, subType, seed)
    end
    if (entityType == EntityType.ENTITY_PITFALL) and (variant == 0) then
        entity.EntityCollisionClass = EntityCollisionClass.ENTCOLL_ENEMIES
        entity.GridCollisionClass = EntityGridCollisionClass.GRIDCOLL_WALLS
    end
    storePersistentEntity(nil, entity)
    return entity
end
function storePersistentEntity(self, entity)
    if not PERSISTENT_ENTITY_TYPES:has(entity.Type) then
        return
    end
    local game = Game()
    local room = game:GetRoom()
    local gridIndex = room:GetGridIndex(entity.Position)
    local roomIndex = getRoomIndex(nil)
    local persistentEntity = {gridIndex = gridIndex, type = entity.Type, variant = entity.Variant, subType = entity.SubType}
    local persistentEntities = v.level.persistentEntities:get(roomIndex)
    if persistentEntities == nil then
        persistentEntities = {}
        v.level.persistentEntities:set(roomIndex, persistentEntities)
    end
    __TS__ArrayPush(persistentEntities, persistentEntity)
end
function fixPitGraphics(self)
    local game = Game()
    local room = game:GetRoom()
    local gridWidth = room:GetGridWidth()
    local pitMap = getPitMap(nil)
    for ____, ____value in __TS__Iterator(
        pitMap:entries()
    ) do
        local gridIndex
        gridIndex = ____value[1]
        local gridEntity
        gridEntity = ____value[2]
        local gridIndexLeft = gridIndex - 1
        local L = pitMap:has(gridIndexLeft)
        local gridIndexRight = gridIndex + 1
        local R = pitMap:has(gridIndexRight)
        local gridIndexUp = gridIndex - gridWidth
        local U = pitMap:has(gridIndexUp)
        local gridIndexDown = gridIndex + gridWidth
        local D = pitMap:has(gridIndexDown)
        local gridIndexUpLeft = (gridIndex - gridWidth) - 1
        local UL = pitMap:has(gridIndexUpLeft)
        local gridIndexUpRight = (gridIndex - gridWidth) + 1
        local UR = pitMap:has(gridIndexUpRight)
        local gridIndexDownLeft = (gridIndex + gridWidth) - 1
        local DL = pitMap:has(gridIndexDownLeft)
        local gridIndexDownRight = (gridIndex + gridWidth) + 1
        local DR = pitMap:has(gridIndexDownRight)
        local pitFrame = getPitFrame(nil, L, R, U, D, UL, UR, DL, DR)
        local sprite = gridEntity:GetSprite()
        sprite:SetFrame(pitFrame)
    end
end
function getPitMap(self)
    local pitMap = __TS__New(Map)
    for ____, gridEntity in ipairs(
        getGridEntities(nil, GridEntityType.GRID_PIT)
    ) do
        local gridIndex = gridEntity:GetGridIndex()
        pitMap:set(gridIndex, gridEntity)
    end
    return pitMap
end
function getPitFrame(self, L, R, U, D, UL, UR, DL, DR)
    local F = 0
    if L then
        F = F | 1
    end
    if U then
        F = F | 2
    end
    if R then
        F = F | 4
    end
    if D then
        F = F | 8
    end
    if (((U and L) and (not UL)) and (not R)) and (not D) then
        F = 17
    end
    if (((U and R) and (not UR)) and (not L)) and (not D) then
        F = 18
    end
    if (((L and D) and (not DL)) and (not U)) and (not R) then
        F = 19
    end
    if (((R and D) and (not DR)) and (not L)) and (not U) then
        F = 20
    end
    if (((L and U) and R) and D) and (not UL) then
        F = 21
    end
    if (((L and U) and R) and D) and (not UR) then
        F = 22
    end
    if (((U and R) and D) and (not L)) and (not UR) then
        F = 25
    end
    if (((L and U) and D) and (not R)) and (not UL) then
        F = 26
    end
    if ((((L and U) and R) and D) and (not DL)) and (not DR) then
        F = 24
    end
    if ((((L and U) and R) and D) and (not UR)) and (not UL) then
        F = 23
    end
    if ((((L and U) and R) and UL) and (not UR)) and (not D) then
        F = 27
    end
    if ((((L and U) and R) and UR) and (not UL)) and (not D) then
        F = 28
    end
    if ((((L and U) and R) and (not D)) and (not UR)) and (not UL) then
        F = 29
    end
    if ((((L and R) and D) and DL) and (not U)) and (not DR) then
        F = 30
    end
    if ((((L and R) and D) and DR) and (not U)) and (not DL) then
        F = 31
    end
    if ((((L and R) and D) and (not U)) and (not DL)) and (not DR) then
        F = 32
    end
    return F
end
FEATURE_NAME = "JSON room deployer"
NPCS_TO_NOT_REMOVE = __TS__New(Set, {EntityType.ENTITY_DARK_ESAU})
PERSISTENT_ENTITY_TYPES = __TS__New(Set, {EntityType.ENTITY_WALL_HUGGER})
initialized = false
v = {
    level = {
        deployedRoomIndexes = __TS__New(Set),
        persistentEntities = __TS__New(Map),
        decorationGridIndexes = __TS__New(Map)
    }
}
function ____exports.deployJSONRoomInit(self, mod)
    initialized = true
    saveDataManager(nil, "deployJSONRoom", v)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
function ____exports.deployJSONRoom(self, jsonRoom, seed)
    if seed == nil then
        seed = Random()
    end
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    ____exports.emptyRoom(nil, false)
    local newSeed = spawnAllEntities(nil, jsonRoom, seed)
    fixPitGraphics(nil)
    fillRoomWithDecorations(nil)
    return newSeed
end
function ____exports.deployRandomJSONRoom(self, jsonRooms, seed)
    if seed == nil then
        seed = Random()
    end
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local randomJSONRoom = getRandomJSONRoom(nil, jsonRooms, seed)
    return ____exports.deployJSONRoom(nil, randomJSONRoom, seed)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.errors"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getUpgradeErrorMsg(self, featureName)
    return ("The " .. featureName) .. " is not initialized. You must first upgrade your mod object by calling the \"upgradeMod()\" function."
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.entity"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local getRandom = ____random.getRandom
local nextSeed = ____random.nextSeed
function ____exports.anyEntityCloserThan(self, entities, position, distance)
    for ____, entity in ipairs(entities) do
        if position:Distance(entity.Position) <= distance then
            return true
        end
    end
    return false
end
function ____exports.getBombs(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_BOMB, matchingVariant, matchingSubType)
    local bombs = {}
    for ____, entity in ipairs(entities) do
        local bomb = entity:ToBomb()
        if bomb ~= nil then
            __TS__ArrayPush(bombs, bomb)
        end
    end
    return bombs
end
function ____exports.getClosestEntityTo(self, referenceEntity, entities)
    local closestEntity = nil
    local closestDistance = math.huge
    for ____, entity in ipairs(entities) do
        local distance = referenceEntity.Position:Distance(entity.Position)
        if distance < closestDistance then
            closestEntity = entity
            closestDistance = distance
        end
    end
    if closestEntity == nil then
        error("Failed to find the closest entity.")
    end
    return closestEntity
end
function ____exports.getEffects(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_EFFECT, matchingVariant, matchingSubType)
    local effects = {}
    for ____, entity in ipairs(entities) do
        local effect = entity:ToEffect()
        if effect ~= nil then
            __TS__ArrayPush(effects, effect)
        end
    end
    return effects
end
function ____exports.getEntities(self, matchingEntityType, matchingVariant, matchingSubType, ignoreFriendly)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    if ignoreFriendly == nil then
        ignoreFriendly = false
    end
    if matchingEntityType == nil then
        return Isaac.GetRoomEntities()
    end
    return Isaac.FindByType(matchingEntityType, matchingVariant, matchingSubType, ignoreFriendly)
end
function ____exports.getFamiliars(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_FAMILIAR, matchingVariant, matchingSubType)
    local familiars = {}
    for ____, entity in ipairs(entities) do
        local familiar = entity:ToFamiliar()
        if familiar ~= nil then
            __TS__ArrayPush(familiars, familiar)
        end
    end
    return familiars
end
function ____exports.getKnives(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_KNIFE, matchingVariant, matchingSubType)
    local knives = {}
    for ____, entity in ipairs(entities) do
        local knife = entity:ToKnife()
        if knife ~= nil then
            __TS__ArrayPush(knives, knife)
        end
    end
    return knives
end
function ____exports.getLasers(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_LASER, matchingVariant, matchingSubType)
    local lasers = {}
    for ____, entity in ipairs(entities) do
        local laser = entity:ToLaser()
        if laser ~= nil then
            __TS__ArrayPush(lasers, laser)
        end
    end
    return lasers
end
function ____exports.getPickups(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_PICKUP, matchingVariant, matchingSubType)
    local pickups = {}
    for ____, entity in ipairs(entities) do
        local pickup = entity:ToPickup()
        if pickup ~= nil then
            __TS__ArrayPush(pickups, pickup)
        end
    end
    return pickups
end
function ____exports.getProjectiles(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_PROJECTILE, matchingVariant, matchingSubType)
    local projectiles = {}
    for ____, entity in ipairs(entities) do
        local projectile = entity:ToProjectile()
        if projectile ~= nil then
            __TS__ArrayPush(projectiles, projectile)
        end
    end
    return projectiles
end
function ____exports.getSlots(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local slots = Isaac.FindByType(EntityType.ENTITY_SLOT, matchingVariant, matchingSubType)
    return slots
end
function ____exports.getTears(self, matchingVariant, matchingSubType)
    if matchingVariant == nil then
        matchingVariant = -1
    end
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_TEAR, matchingVariant, matchingSubType)
    local tears = {}
    for ____, entity in ipairs(entities) do
        local tear = entity:ToTear()
        if tear ~= nil then
            __TS__ArrayPush(tears, tear)
        end
    end
    return tears
end
function ____exports.removeEntities(self, entities)
    for ____, entity in ipairs(entities) do
        entity:Remove()
    end
end
function ____exports.removeAllBombs(self)
    local bombs = ____exports.getBombs(nil)
    for ____, bomb in ipairs(bombs) do
        bomb:Remove()
    end
end
function ____exports.removeAllEffects(self)
    local effects = ____exports.getEffects(nil)
    for ____, effect in ipairs(effects) do
        effect:Remove()
    end
end
function ____exports.removeAllFamiliars(self)
    local familiars = ____exports.getFamiliars(nil)
    for ____, familiar in ipairs(familiars) do
        familiar:Remove()
    end
end
function ____exports.removeAllKnives(self)
    local knives = ____exports.getKnives(nil)
    for ____, knife in ipairs(knives) do
        knife:Remove()
    end
end
function ____exports.removeAllLasers(self)
    local lasers = ____exports.getLasers(nil)
    for ____, laser in ipairs(lasers) do
        laser:Remove()
    end
end
function ____exports.removeAllMatchingEntities(self, entityType, entityVariant, entitySubType)
    if entityVariant == nil then
        entityVariant = -1
    end
    if entitySubType == nil then
        entitySubType = -1
    end
    local entities = Isaac.FindByType(entityType, entityVariant, entitySubType)
    ____exports.removeEntities(nil, entities)
end
function ____exports.removeAllPickups(self)
    local pickups = ____exports.getPickups(nil)
    for ____, pickup in ipairs(pickups) do
        pickup:Remove()
    end
end
function ____exports.removeAllProjectiles(self)
    local projectiles = ____exports.getProjectiles(nil)
    for ____, projectile in ipairs(projectiles) do
        projectile:Remove()
    end
end
function ____exports.removeAllTears(self)
    local tears = ____exports.getTears(nil)
    for ____, tear in ipairs(tears) do
        tear:Remove()
    end
end
function ____exports.setEntityRandomColor(self, entity)
    local colorValues = {}
    local seed = entity.InitSeed
    do
        local i = 0
        while i < 3 do
            seed = nextSeed(nil, seed)
            local randomColorValue = getRandom(nil, seed)
            __TS__ArrayPush(colorValues, randomColorValue)
            i = i + 1
        end
    end
    local color = Color(colorValues[1], colorValues[2], colorValues[3])
    entity:SetColor(color, 100000, 100000, false, false)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.random"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local RECOMMENDED_SHIFT_IDX
function ____exports.initRNG(self, seed)
    if seed == nil then
        seed = Random()
    end
    if seed == 0 then
        error("You cannot initialize an RNG object with a seed of 0, or the game will crash.")
    end
    local rng = RNG()
    rng:SetSeed(seed, RECOMMENDED_SHIFT_IDX)
    return rng
end
RECOMMENDED_SHIFT_IDX = 35
function ____exports.getRandom(self, seed)
    if seed == nil then
        seed = Random()
    end
    local rng = ____exports.initRNG(nil, seed)
    return rng:RandomFloat()
end
function ____exports.getRandomFloat(self, min, max, seed)
    if seed == nil then
        seed = Random()
    end
    return min + (____exports.getRandom(nil, seed) * (max - min))
end
function ____exports.getRandomInt(self, min, max, seed)
    if seed == nil then
        seed = Random()
    end
    local rng = ____exports.initRNG(nil, seed)
    return rng:RandomInt((max - min) + 1) + min
end
function ____exports.nextSeed(self, seed)
    local rng = ____exports.initRNG(nil, seed)
    rng:Next()
    return rng:GetSeed()
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.gridEntity"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local GRID_ENTITY_XML_MAP = ____constants.GRID_ENTITY_XML_MAP
function ____exports.removeGridEntity(self, gridEntity)
    local game = Game()
    local room = game:GetRoom()
    local gridIndex = gridEntity:GetGridIndex()
    room:RemoveGridEntity(gridIndex, 0, false)
    room:Update()
end
function ____exports.spawnGridEntityWithVariant(self, gridEntityType, variant, gridIndex)
    local game = Game()
    local room = game:GetRoom()
    local position = room:GetGridPosition(gridIndex)
    local gridEntity = Isaac.GridSpawn(gridEntityType, variant, position, true)
    if gridEntityType == GridEntityType.GRID_PIT then
        local pit = gridEntity:ToPit()
        if pit ~= nil then
            pit:UpdateCollision()
        end
    end
    return gridEntity
end
function ____exports.convertXMLGridEntityType(self, gridEntityXMLType, gridEntityXMLVariant)
    if gridEntityXMLType == EntityType.ENTITY_TRIGGER_OUTPUT then
        return nil
    end
    local gridEntityArray = GRID_ENTITY_XML_MAP:get(gridEntityXMLType)
    if gridEntityArray == nil then
        error(
            "Failed to find an entry in the grid entity map for XML entity type: " .. tostring(gridEntityXMLType)
        )
    end
    local gridEntityType = gridEntityArray[1]
    local gridEntityVariant = gridEntityArray[2]
    if ((gridEntityType == GridEntityType.GRID_SPIKES_ONOFF) or (gridEntityType == GridEntityType.GRID_PRESSURE_PLATE)) or (gridEntityType == GridEntityType.GRID_TELEPORTER) then
        gridEntityVariant = gridEntityXMLVariant
    end
    return {gridEntityType, gridEntityVariant}
end
function ____exports.getGridEntities(self, ...)
    local gridEntityTypes = {...}
    local game = Game()
    local room = game:GetRoom()
    local gridSize = room:GetGridSize()
    local gridEntityTypesSet = __TS__New(Set, gridEntityTypes)
    local gridEntities = {}
    do
        local gridIndex = 0
        while gridIndex < gridSize do
            do
                local gridEntity = room:GetGridEntity(gridIndex)
                if gridEntity == nil then
                    goto __continue7
                end
                if #gridEntityTypes == 0 then
                    __TS__ArrayPush(gridEntities, gridEntity)
                else
                    local thisGridEntityType = gridEntity:GetType()
                    if gridEntityTypesSet:has(thisGridEntityType) then
                        __TS__ArrayPush(gridEntities, gridEntity)
                    end
                end
            end
            ::__continue7::
            gridIndex = gridIndex + 1
        end
    end
    return gridEntities
end
function ____exports.getSurroundingGridEntities(self, gridEntity)
    local game = Game()
    local room = game:GetRoom()
    local gridWidth = room:GetGridWidth()
    local gridIndex = gridEntity:GetGridIndex()
    local surroundingGridIndexes = {gridIndex - 1, gridIndex + 1, (gridIndex - gridWidth) - 1, gridIndex - gridWidth, (gridIndex - gridWidth) + 1, (gridIndex + gridWidth) - 1, gridIndex + gridWidth, (gridIndex + gridWidth) + 1}
    local surroundingGridEntities = {}
    for ____, surroundingGridIndex in ipairs(surroundingGridIndexes) do
        local surroundingGridEntity = room:GetGridEntity(surroundingGridIndex)
        if surroundingGridEntity ~= nil then
            __TS__ArrayPush(surroundingGridEntities, surroundingGridEntity)
        end
    end
    return surroundingGridEntities
end
function ____exports.isAllPressurePlatesPushed(self)
    local game = Game()
    local room = game:GetRoom()
    local hasPressurePlates = room:HasTriggerPressurePlates()
    if not hasPressurePlates then
        return true
    end
    for ____, gridEntity in ipairs(
        ____exports.getGridEntities(nil, GridEntityType.GRID_PRESSURE_PLATE)
    ) do
        local gridEntityDesc = gridEntity:GetSaveState()
        if gridEntityDesc.State ~= 3 then
            return false
        end
    end
    return true
end
function ____exports.isPostBossVoidPortal(self, gridEntity)
    local saveState = gridEntity:GetSaveState()
    return saveState.VarData == 1
end
function ____exports.removeAllGridEntitiesExceptFor(self, ...)
    local gridEntityTypes = {...}
    local gridEntityTypeExceptions = __TS__New(Set, gridEntityTypes)
    local gridEntities = ____exports.getGridEntities(nil)
    for ____, gridEntity in ipairs(gridEntities) do
        local gridEntityType = gridEntity:GetType()
        if not gridEntityTypeExceptions:has(gridEntityType) then
            ____exports.removeGridEntity(nil, gridEntity)
        end
    end
end
function ____exports.removeAllMatchingGridEntities(self, gridEntityType)
    local gridEntities = ____exports.getGridEntities(nil, gridEntityType)
    for ____, gridEntity in ipairs(gridEntities) do
        ____exports.removeGridEntity(nil, gridEntity)
    end
end
function ____exports.setGridEntityInvisible(self, gridEntity)
    local sprite = gridEntity:GetSprite()
    sprite:ReplaceSpritesheet(0, "gfx/none.png")
    sprite:LoadGraphics()
end
function ____exports.spawnGiantPoop(self, topLeftGridIndex)
    local game = Game()
    local room = game:GetRoom()
    local gridWidth = room:GetGridWidth()
    local topRightGridIndex = topLeftGridIndex + 1
    local bottomLeftGridIndex = topLeftGridIndex + gridWidth
    local bottomRightGridIndex = bottomLeftGridIndex + 1
    ____exports.spawnGridEntityWithVariant(nil, GridEntityType.GRID_POOP, 7, topLeftGridIndex)
    ____exports.spawnGridEntityWithVariant(nil, GridEntityType.GRID_POOP, 8, topRightGridIndex)
    ____exports.spawnGridEntityWithVariant(nil, GridEntityType.GRID_POOP, 9, bottomLeftGridIndex)
    ____exports.spawnGridEntityWithVariant(nil, GridEntityType.GRID_POOP, 10, bottomRightGridIndex)
end
function ____exports.spawnGridEntity(self, gridEntityType, gridIndex)
    return ____exports.spawnGridEntityWithVariant(nil, gridEntityType, 0, gridIndex)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.jsonRoom"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local getTotalWeightOfJSONRooms, getJSONRoomWithChosenWeight
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local getRandomFloat = ____random.getRandomFloat
function getTotalWeightOfJSONRooms(self, jsonRooms)
    local totalWeight = 0
    for ____, jsonRoom in ipairs(jsonRooms) do
        local roomWeightString = jsonRoom["$"].weight
        local roomWeight = tonumber(roomWeightString)
        if roomWeight == nil then
            error(("Failed to parse the weight of a room: " .. roomWeightString) .. ".")
        end
        totalWeight = totalWeight + roomWeight
    end
    return totalWeight
end
function getJSONRoomWithChosenWeight(self, jsonRooms, chosenWeight)
    for ____, jsonRoom in ipairs(jsonRooms) do
        local roomWeightString = jsonRoom["$"].weight
        local roomWeight = tonumber(roomWeightString)
        if roomWeight == nil then
            error("Failed to parse the weight of a room: " .. roomWeightString)
        end
        if chosenWeight < roomWeight then
            return jsonRoom
        end
        chosenWeight = chosenWeight - roomWeight
    end
    error(
        "Failed to get a room with chosen weight: " .. tostring(chosenWeight)
    )
    return jsonRooms[1]
end
function ____exports.getJSONRoomOfVariant(self, jsonRooms, variant)
    for ____, jsonRoom in ipairs(jsonRooms) do
        local roomVariantString = jsonRoom["$"].variant
        local roomVariant = tonumber(roomVariantString)
        if roomVariant == variant then
            return jsonRoom
        end
    end
    return nil
end
function ____exports.getJSONRoomsOfSubType(self, jsonRooms, subType)
    local jsonRoomsOfSubType = {}
    for ____, jsonRoom in ipairs(jsonRooms) do
        local roomSubTypeString = jsonRoom["$"].subtype
        local roomSubType = tonumber(roomSubTypeString)
        if roomSubType == subType then
            __TS__ArrayPush(jsonRoomsOfSubType, jsonRoom)
        end
    end
    return jsonRoomsOfSubType
end
function ____exports.getRandomJSONRoom(self, jsonRooms, seed)
    if seed == nil then
        seed = Random()
    end
    local totalWeight = getTotalWeightOfJSONRooms(nil, jsonRooms)
    local chosenWeight = getRandomFloat(nil, 0, totalWeight, seed)
    return getJSONRoomWithChosenWeight(nil, jsonRooms, chosenWeight)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.npc"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local NON_ALIVE_NPCS_TYPE_VARIANT, NON_ALIVE_NPCS_TYPE_VARIANT_SUBTYPE
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local EGGY_STATE_FRAME_OF_FINAL_SPIDER = ____constants.EGGY_STATE_FRAME_OF_FINAL_SPIDER
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local getEntities = ____entity.getEntities
function ____exports.getBosses(self)
    local bosses = {}
    for ____, npc in ipairs(
        ____exports.getNPCs(nil)
    ) do
        if npc:IsBoss() then
            __TS__ArrayPush(bosses, npc)
        end
    end
    return bosses
end
function ____exports.getNPCs(self, matchingEntityType, matchingVariant, matchingSubType, ignoreFriendly)
    if ignoreFriendly == nil then
        ignoreFriendly = false
    end
    local entities = getEntities(nil, matchingEntityType, matchingVariant, matchingSubType, ignoreFriendly)
    local npcs = {}
    for ____, entity in ipairs(entities) do
        local npc = entity:ToNPC()
        if npc ~= nil then
            __TS__ArrayPush(npcs, npc)
        end
    end
    return npcs
end
function ____exports.isAliveExceptionNPC(self, npc)
    local entityTypeVariant = (tostring(npc.Type) .. ".") .. tostring(npc.Variant)
    if NON_ALIVE_NPCS_TYPE_VARIANT:has(entityTypeVariant) then
        return true
    end
    local entityTypeVariantSubType = (((tostring(npc.Type) .. ".") .. tostring(npc.Variant)) .. ".") .. tostring(npc.SubType)
    if NON_ALIVE_NPCS_TYPE_VARIANT_SUBTYPE:has(entityTypeVariantSubType) then
        return true
    end
    if ____exports.isRaglingDeathPatch(nil, npc) then
        return true
    end
    if ____exports.isDyingEggyWithNoSpidersLeft(nil, npc) then
        return true
    end
    return false
end
function ____exports.isDyingEggyWithNoSpidersLeft(self, npc)
    return (npc.State == NpcState.STATE_SUICIDE) and (npc.StateFrame >= EGGY_STATE_FRAME_OF_FINAL_SPIDER)
end
function ____exports.isRaglingDeathPatch(self, npc)
    return ((npc.Type == EntityType.ENTITY_RAGLING) and (npc.Variant == 1)) and (npc.State == NpcState.STATE_SPECIAL)
end
NON_ALIVE_NPCS_TYPE_VARIANT = __TS__New(
    Set,
    {
        (tostring(EntityType.ENTITY_VIS) .. ".") .. 22,
        (tostring(EntityType.ENTITY_DEATH) .. ".") .. 10,
        (tostring(EntityType.ENTITY_PEEP) .. ".") .. 10,
        (tostring(EntityType.ENTITY_PEEP) .. ".") .. 11,
        (tostring(EntityType.ENTITY_BEGOTTEN) .. ".") .. 10,
        (tostring(EntityType.ENTITY_MAMA_GURDY) .. ".") .. 1,
        (tostring(EntityType.ENTITY_MAMA_GURDY) .. ".") .. 2,
        (tostring(EntityType.ENTITY_BIG_HORN) .. ".") .. 1,
        (tostring(EntityType.ENTITY_BIG_HORN) .. ".") .. 2
    }
)
NON_ALIVE_NPCS_TYPE_VARIANT_SUBTYPE = __TS__New(
    Set,
    {
        (((tostring(EntityType.ENTITY_CHARGER) .. ".") .. 0) .. ".") .. 1
    }
)
function ____exports.getAliveBosses(self)
    local aliveBosses = {}
    for ____, boss in ipairs(
        ____exports.getBosses(nil)
    ) do
        if (not boss:IsDead()) and (not ____exports.isAliveExceptionNPC(nil, boss)) then
            __TS__ArrayPush(aliveBosses, boss)
        end
    end
    return aliveBosses
end
function ____exports.getAliveNPCs(self)
    local aliveNPCs = {}
    for ____, npc in ipairs(
        ____exports.getNPCs(nil)
    ) do
        if (not npc:IsDead()) and (not ____exports.isAliveExceptionNPC(nil, npc)) then
            __TS__ArrayPush(aliveNPCs, npc)
        end
    end
    return aliveNPCs
end
function ____exports.removeAllNPCs(self)
    local npcs = ____exports.getNPCs(nil)
    for ____, npc in ipairs(npcs) do
        npc:Remove()
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.rooms"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local DEFAULT_ITEM_POOL_TYPE = ____constants.DEFAULT_ITEM_POOL_TYPE
local GENESIS_ROOM_SUBTYPE = ____constants.GENESIS_ROOM_SUBTYPE
local GENESIS_ROOM_VARIANT = ____constants.GENESIS_ROOM_VARIANT
local MAX_ROOM_INDEX = ____constants.MAX_ROOM_INDEX
local ROOM_TYPE_TO_ITEM_POOL_TYPE_MAP = ____constants.ROOM_TYPE_TO_ITEM_POOL_TYPE_MAP
local ____doors = require("lua_modules.isaacscript-common.dist.functions.doors")
local closeAllDoors = ____doors.closeAllDoors
local getDoors = ____doors.getDoors
local isHiddenSecretRoomDoor = ____doors.isHiddenSecretRoomDoor
function ____exports.getRoomIndex(self)
    local game = Game()
    local level = game:GetLevel()
    local roomIndex = level:GetCurrentRoomIndex()
    if roomIndex < 0 then
        return roomIndex
    end
    local roomDesc = level:GetCurrentRoomDesc()
    return roomDesc.SafeGridIndex
end
function ____exports.changeRoom(self, roomIndex)
    local game = Game()
    local level = game:GetLevel()
    level.LeaveDoor = -1
    game:ChangeRoom(roomIndex)
end
function ____exports.getCurrentDimension(self)
    local game = Game()
    local level = game:GetLevel()
    local startingRoomIndex = level:GetStartingRoomIndex()
    local startingRoomDesc = level:GetRoomByIdx(startingRoomIndex, -1)
    local startingRoomHash = GetPtrHash(startingRoomDesc)
    do
        local dimension = 0
        while dimension <= 2 do
            local dimensionRoomDesc = level:GetRoomByIdx(startingRoomIndex, dimension)
            local dimensionRoomHash = GetPtrHash(dimensionRoomDesc)
            if dimensionRoomHash == startingRoomHash then
                return dimension
            end
            dimension = dimension + 1
        end
    end
    error(
        "Failed to get the current dimension using the starting room index of: " .. tostring(startingRoomIndex)
    )
    return 0
end
function ____exports.getRoomData(self)
    local game = Game()
    local level = game:GetLevel()
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomDesc = level:GetRoomByIdx(roomIndex)
    return roomDesc.Data
end
function ____exports.getRoomDataType(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Type
end
function ____exports.getRoomIndexesForType(self, roomType)
    local game = Game()
    local level = game:GetLevel()
    local roomIndexes = __TS__New(Set)
    do
        local i = 0
        while i <= MAX_ROOM_INDEX do
            local room = level:GetRoomByIdx(i)
            if ((room ~= nil) and (room.Data ~= nil)) and (room.Data.Type == roomType) then
                roomIndexes:add(room.SafeGridIndex)
            end
            i = i + 1
        end
    end
    return roomIndexes
end
function ____exports.getRoomItemPoolType(self)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local itemPoolType = ROOM_TYPE_TO_ITEM_POOL_TYPE_MAP:get(roomType)
    return ((itemPoolType == nil) and DEFAULT_ITEM_POOL_TYPE) or itemPoolType
end
function ____exports.getRoomName(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return "Unknown"
    end
    return roomData.Name
end
function ____exports.getRoomStageID(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.StageID
end
function ____exports.getRoomSubType(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Subtype
end
function ____exports.getRoomVariant(self)
    local roomData = ____exports.getRoomData(nil)
    if roomData == nil then
        return -1
    end
    return roomData.Variant
end
function ____exports.getRoomVisitedCount(self)
    local game = Game()
    local level = game:GetLevel()
    local roomDesc = level:GetCurrentRoomDesc()
    return roomDesc.VisitedCount
end
function ____exports.gridToPos(self, x, y)
    local game = Game()
    local room = game:GetRoom()
    x = x + 1
    y = y + 1
    local gridIndex = (y * room:GetGridWidth()) + x
    return room:GetGridPosition(gridIndex)
end
function ____exports.in2x1Room(self)
    local game = Game()
    local room = game:GetRoom()
    local roomShape = room:GetRoomShape()
    return (roomShape == RoomShape.ROOMSHAPE_1x2) or (roomShape == RoomShape.ROOMSHAPE_2x1)
end
function ____exports.inAngelShop(self)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomType == RoomType.ROOM_ANGEL) and (roomSubType == 1)
end
function ____exports.inBeastRoom(self)
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomIndex == GridRooms.ROOM_DUNGEON_IDX) and (roomSubType == 4)
end
function ____exports.inBossRoomOf(self, bossID)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return ((roomType == RoomType.ROOM_BOSS) and (roomStageID == 0)) and (roomSubType == bossID)
end
function ____exports.inCrawlspace(self)
    local roomIndex = ____exports.getRoomIndex(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomIndex == GridRooms.ROOM_DUNGEON_IDX) and (roomSubType ~= 4)
end
function ____exports.inDeathCertificateArea(self)
    local roomStageID = ____exports.getRoomStageID(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return (roomStageID == 35) and ((roomSubType == 33) or (roomSubType == 33))
end
function ____exports.inDimension(self, dimension)
    return dimension == ____exports.getCurrentDimension(nil)
end
function ____exports.inLRoom(self)
    local game = Game()
    local room = game:GetRoom()
    local roomShape = room:GetRoomShape()
    return (((roomShape == RoomShape.ROOMSHAPE_LTL) or (roomShape == RoomShape.ROOMSHAPE_LTR)) or (roomShape == RoomShape.ROOMSHAPE_LBL)) or (roomShape == RoomShape.ROOMSHAPE_LBR)
end
function ____exports.inGenesisRoom(self)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local roomVariant = ____exports.getRoomVariant(nil)
    local roomSubType = ____exports.getRoomSubType(nil)
    return ((roomType == RoomType.ROOM_ISAACS) and (roomVariant == GENESIS_ROOM_VARIANT)) and (roomSubType == GENESIS_ROOM_SUBTYPE)
end
function ____exports.inStartingRoom(self)
    local game = Game()
    local level = game:GetLevel()
    local startingRoomIndex = level:GetStartingRoomIndex()
    local roomIndex = ____exports.getRoomIndex(nil)
    return roomIndex == startingRoomIndex
end
function ____exports.setRoomCleared(self)
    local game = Game()
    local room = game:GetRoom()
    local roomClear = room:IsClear()
    local sfx = SFXManager()
    if roomClear then
        return
    end
    room:SetClear(true)
    for ____, door in ipairs(
        getDoors(nil)
    ) do
        do
            if isHiddenSecretRoomDoor(nil, door) then
                goto __continue37
            end
            door.State = DoorState.STATE_OPEN
            local sprite = door:GetSprite()
            sprite:Play("Opened", true)
            door.ExtraVisible = false
        end
        ::__continue37::
    end
    sfx:Stop(SoundEffect.SOUND_DOOR_HEAVY_OPEN)
    game:ShakeScreen(0)
end
function ____exports.setRoomUncleared(self)
    local game = Game()
    local room = game:GetRoom()
    room:SetClear(false)
    closeAllDoors(nil)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.doors"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MAX_NUM_DOORS = ____constants.MAX_NUM_DOORS
function ____exports.getDoors(self, roomType)
    local game = Game()
    local room = game:GetRoom()
    local doors = {}
    do
        local i = 0
        while i < MAX_NUM_DOORS do
            do
                local door = room:GetDoor(i)
                if door == nil then
                    goto __continue5
                end
                if roomType == nil then
                    __TS__ArrayPush(doors, door)
                elseif door:IsRoomType(roomType) then
                    __TS__ArrayPush(doors, door)
                end
            end
            ::__continue5::
            i = i + 1
        end
    end
    return doors
end
function ____exports.isAngelRoomDoor(self, door)
    return door.TargetRoomType == RoomType.ROOM_ANGEL
end
function ____exports.isDevilRoomDoor(self, door)
    return door.TargetRoomType == RoomType.ROOM_DEVIL
end
function ____exports.isRepentanceDoor(self, door)
    return door.TargetRoomIndex == GridRooms.ROOM_SECRET_EXIT_IDX
end
function ____exports.isSecretRoomDoor(self, door)
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_08_HoleInWall.anm2"
end
function ____exports.closeAllDoors(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        door.State = DoorState.STATE_CLOSED
        local sprite = door:GetSprite()
        sprite:Play("Close", true)
    end
end
function ____exports.getAngelRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isAngelRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getDevilRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isDevilRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getDevilRoomOrAngelRoomDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isDevilRoomDoor(nil, door) or ____exports.isAngelRoomDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.getRepentanceDoor(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        if ____exports.isRepentanceDoor(nil, door) then
            return door
        end
    end
    return nil
end
function ____exports.isHiddenSecretRoomDoor(self, door)
    local sprite = door:GetSprite()
    local animation = sprite:GetAnimation()
    return ____exports.isSecretRoomDoor(nil, door) and (animation == "Hidden")
end
function ____exports.isDoorToDownpour(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Downpour.anm2"
end
function ____exports.isDoorToMausoleum(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mausoleum.anm2"
end
function ____exports.isDoorToMausoleumAscent(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mausoleum_Alt.anm2"
end
function ____exports.isDoorToMines(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_Mines.anm2"
end
function ____exports.isDoorToMomsHeart(self, door)
    if not ____exports.isRepentanceDoor(nil, door) then
        return false
    end
    local sprite = door:GetSprite()
    local filename = sprite:GetFilename()
    return filename == "gfx/grid/Door_MomsHeart.anm2"
end
function ____exports.openAllDoors(self)
    for ____, door in ipairs(
        ____exports.getDoors(nil)
    ) do
        door:Open()
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.spawnCollectible"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____preventCollectibleRotate = require("lua_modules.isaacscript-common.dist.features.preventCollectibleRotate")
local preventCollectibleRotate = ____preventCollectibleRotate.preventCollectibleRotate
local ____initialized = require("lua_modules.isaacscript-common.dist.initialized")
local areFeaturesInitialized = ____initialized.areFeaturesInitialized
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local isQuestCollectible = ____collectibles.isQuestCollectible
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local anyPlayerIs = ____player.anyPlayerIs
function ____exports.spawnCollectible(self, collectibleType, position, seed, options, forceFreeItem)
    if seed == nil then
        seed = Random()
    end
    if options == nil then
        options = false
    end
    if forceFreeItem == nil then
        forceFreeItem = false
    end
    if seed == 0 then
        error("Failed to spawn a collectible since the provided seed was 0, which is not allowed. (It will cause the game to crash.)")
    end
    local game = Game()
    local collectible = game:Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, position, Vector.Zero, nil, collectibleType, seed):ToPickup()
    if collectible == nil then
        error("Failed to spawn a collectible.")
    end
    if options then
        collectible.OptionsPickupIndex = 1
    end
    if (anyPlayerIs(nil, PlayerType.PLAYER_KEEPER_B) and (not isQuestCollectible(nil, collectibleType))) and (not forceFreeItem) then
        collectible.ShopItemId = -1
        collectible.Price = 15
    end
    if isQuestCollectible(nil, collectibleType) and areFeaturesInitialized(nil) then
        preventCollectibleRotate(nil, collectible, collectibleType)
    end
    return collectible
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.preventCollectibleRotate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local useCardSoulOfIsaac, postPickupUpdateCollectible, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local setCollectibleSubType = ____collectibles.setCollectibleSubType
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function useCardSoulOfIsaac(self)
    v.room.trackedItems:clear()
end
function postPickupUpdateCollectible(self, pickup)
    if pickup.SubType == CollectibleType.COLLECTIBLE_NULL then
        return
    end
    local trackedCollectibleType = v.room.trackedItems:get(pickup.InitSeed)
    if (trackedCollectibleType ~= nil) and (pickup.SubType ~= trackedCollectibleType) then
        setCollectibleSubType(nil, pickup, trackedCollectibleType)
    end
end
local FEATURE_NAME = "prevent collectible rotation"
local initialized = false
v = {
    room = {
        trackedItems = __TS__New(Map)
    }
}
function ____exports.preventCollectibleRotateInit(self, mod)
    initialized = true
    saveDataManager(nil, "preventCollectibleRotate", v)
    mod:AddCallback(ModCallbacks.MC_USE_CARD, useCardSoulOfIsaac, Card.CARD_SOUL_ISAAC)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_UPDATE, postPickupUpdateCollectible, PickupVariant.PICKUP_COLLECTIBLE)
end
function ____exports.preventCollectibleRotate(self, collectible, collectibleType)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    if collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot prevent the rotation for pickups of variant: " .. tostring(collectible.Variant)
        )
    end
    v.room.trackedItems:set(collectible.InitSeed, collectibleType)
    postPickupUpdateCollectible(nil, collectible)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.collectibles"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local COLLECTIBLE_SPRITE_LAYER
local ____collectibleNameMap = require("lua_modules.isaacscript-common.dist.collectibleNameMap")
local COLLECTIBLE_NAME_MAP = ____collectibleNameMap.COLLECTIBLE_NAME_MAP
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local removeAllMatchingEntities = ____entity.removeAllMatchingEntities
function ____exports.setCollectibleSprite(self, collectible, pngPath)
    if collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot set a collectible sprite for pickups of variant: " .. tostring(collectible.Variant)
        )
    end
    local sprite = collectible:GetSprite()
    sprite:ReplaceSpritesheet(COLLECTIBLE_SPRITE_LAYER, pngPath)
    sprite:LoadGraphics()
end
COLLECTIBLE_SPRITE_LAYER = 1
local BLIND_ITEM_PNG_PATH = "gfx/items/collectibles/questionmark.png"
local GLITCHED_ITEM_THRESHOLD = 4000000000
function ____exports.collectibleHasTag(self, collectibleType, tag)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return false
    end
    return itemConfigItem:HasTags(tag)
end
function ____exports.getCollectibleDevilHeartPrice(self, collectibleType, player)
    local itemConfig = Isaac.GetItemConfig()
    local maxHearts = player:GetMaxHearts()
    if collectibleType == CollectibleType.COLLECTIBLE_NULL then
        return 0
    end
    if maxHearts == 0 then
        return PickupPrice.PRICE_THREE_SOULHEARTS
    end
    local defaultPickupPrice = PickupPrice.PRICE_ONE_HEART
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return defaultPickupPrice
    end
    local twoHeartPrice = ((maxHearts == 2) and PickupPrice.PRICE_ONE_HEART_AND_TWO_SOULHEARTS) or PickupPrice.PRICE_TWO_HEARTS
    return ((itemConfigItem.DevilPrice == 2) and twoHeartPrice) or PickupPrice.PRICE_ONE_HEART
end
function ____exports.getCollectibleInitCharges(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return 0
    end
    return itemConfigItem.InitCharge
end
function ____exports.getCollectibleItemType(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return ItemType.ITEM_NULL
    end
    return itemConfigItem.Type
end
function ____exports.getCollectibleMaxCharges(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return 0
    end
    return itemConfigItem.MaxCharges
end
function ____exports.getCollectibleName(self, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local defaultName = "Unknown"
    if type(collectibleType) ~= "number" then
        return defaultName
    end
    local collectibleName = COLLECTIBLE_NAME_MAP:get(collectibleType)
    if collectibleName ~= nil then
        return collectibleName
    end
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return defaultName
    end
    return itemConfigItem.Name
end
function ____exports.getCollectibles(self, matchingSubType)
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, matchingSubType)
    local collectibles = {}
    for ____, entity in ipairs(entities) do
        local pickup = entity:ToPickup()
        if pickup ~= nil then
            __TS__ArrayPush(collectibles, pickup)
        end
    end
    return collectibles
end
function ____exports.getMaxCollectibleID(self)
    local itemConfig = Isaac.GetItemConfig()
    return itemConfig:GetCollectibles().Size - 1
end
function ____exports.isGlitchedCollectible(self, entity)
    return ((entity.Type == EntityType.ENTITY_PICKUP) and (entity.Variant == PickupVariant.PICKUP_COLLECTIBLE)) and (entity.SubType > GLITCHED_ITEM_THRESHOLD)
end
function ____exports.isPassiveCollectible(self, collectibleType)
    local itemType = ____exports.getCollectibleItemType(nil, collectibleType)
    return (itemType == ItemType.ITEM_PASSIVE) or (itemType == ItemType.ITEM_FAMILIAR)
end
function ____exports.isQuestCollectible(self, collectibleType)
    return ____exports.collectibleHasTag(nil, collectibleType, 32768)
end
function ____exports.removeAllCollectibles(self)
    removeAllMatchingEntities(nil, EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE)
end
function ____exports.removeCollectiblePickupDelay(self, collectible)
    if collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot remove pickup delay for pickups of variant: " .. tostring(collectible.Variant)
        )
    end
    collectible.Wait = 0
end
function ____exports.removeCollectibleFromItemTracker(self, collectibleType)
    local collectibleName = ____exports.getCollectibleName(nil, collectibleType)
    Isaac.DebugString(
        ((("Removing collectible " .. tostring(collectibleType)) .. " (") .. collectibleName) .. ") on player 0 (Player)"
    )
end
function ____exports.setCollectibleBlind(self, collectible)
    if collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot set a collectible to be blind for pickups of variant: " .. tostring(collectible.Variant)
        )
    end
    ____exports.setCollectibleSprite(nil, collectible, BLIND_ITEM_PNG_PATH)
end
function ____exports.setCollectibleSubType(self, collectible, newCollectibleType)
    if collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE then
        error(
            "You cannot set a collectible sub type for pickups of variant: " .. tostring(collectible.Variant)
        )
    end
    collectible:Morph(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE, newCollectibleType, true, true, true)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.exports"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local SerializationType = ____deepCopy.SerializationType
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local FEATURE_NAME = ____main.FEATURE_NAME
local forceSaveDataManagerSave = ____main.forceSaveDataManagerSave
local isSaveDataManagerInitialized = ____main.isSaveDataManagerInitialized
local ____maps = require("lua_modules.isaacscript-common.dist.features.saveDataManager.maps")
local saveDataConditionalFuncMap = ____maps.saveDataConditionalFuncMap
local saveDataDefaultsMap = ____maps.saveDataDefaultsMap
local saveDataMap = ____maps.saveDataMap
function ____exports.saveDataManager(self, key, saveData, conditionalFunc)
    if not isSaveDataManagerInitialized(nil) then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local keyType = type(key)
    if keyType ~= "string" then
        error("The save data manager requires that keys are strings. You tried to use a key of type: " .. keyType)
    end
    if saveDataMap[key] ~= nil then
        error("The save data manager is already managing save data for a key of: " .. key)
    end
    saveDataMap[key] = saveData
    local saveDataTable = saveData
    local saveDataTableCopy = deepCopy(nil, saveDataTable, SerializationType.NONE, key)
    local saveDataCopy = saveDataTableCopy
    saveDataDefaultsMap[key] = saveDataCopy
    if conditionalFunc ~= nil then
        saveDataConditionalFuncMap:set(key, conditionalFunc)
    end
end
function ____exports.saveDataManagerSave(self)
    if not isSaveDataManagerInitialized(nil) then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    forceSaveDataManagerSave(nil)
end
function ____exports.saveDataManagerSetGlobal(self)
    g = saveDataMap
    gd = saveDataDefaultsMap
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.deepCopy"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local isTSTLClass, cloneClass, getNewClassFromMetatable, deepCopyValue, copyVector, checkMetatable, validateValue, TSTL_CLASS_KEYS
local ____constantsInternal = require("lua_modules.isaacscript-common.dist.constantsInternal")
local TSTL_CLASS_BRAND = ____constantsInternal.TSTL_CLASS_BRAND
local TSTL_MAP_BRAND = ____constantsInternal.TSTL_MAP_BRAND
local TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = ____constantsInternal.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND
local TSTL_SET_BRAND = ____constantsInternal.TSTL_SET_BRAND
local VECTOR_BRAND = ____constantsInternal.VECTOR_BRAND
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____vector = require("lua_modules.isaacscript-common.dist.functions.vector")
local isVector = ____vector.isVector
function ____exports.deepCopy(self, oldObject, serializationType, traversalDescription)
    if serializationType == nil then
        serializationType = ____exports.SerializationType.NONE
    end
    if traversalDescription == nil then
        traversalDescription = ""
    end
    local oldObjectType = type(oldObject)
    if oldObjectType ~= "table" then
        error(("The deepCopy function was given a " .. oldObjectType) .. " instead of a table.")
    end
    if DEBUG then
        local logString = "deepCopy is operating on: " .. traversalDescription
        if serializationType == ____exports.SerializationType.SERIALIZE then
            logString = logString .. " (serializing)"
        elseif serializationType == ____exports.SerializationType.DESERIALIZE then
            logString = logString .. " (deserializing)"
        end
        log(logString)
    end
    local oldTable = oldObject
    local isClass = isTSTLClass(nil, oldTable)
    local hasTSTLMapBrand = false
    local hasTSTLSetBrand = false
    local hasTSTLClassBrand = false
    if ((not __TS__InstanceOf(oldObject, Map)) and (not __TS__InstanceOf(oldObject, Set))) and (not isClass) then
        checkMetatable(nil, oldTable, traversalDescription)
        hasTSTLMapBrand = oldTable[TSTL_MAP_BRAND] ~= nil
        hasTSTLSetBrand = oldTable[TSTL_SET_BRAND] ~= nil
        hasTSTLClassBrand = oldTable[TSTL_CLASS_BRAND] ~= nil
    end
    local newObject
    if ((serializationType == ____exports.SerializationType.NONE) and __TS__InstanceOf(oldObject, Map)) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLMapBrand) then
        newObject = __TS__New(Map)
    elseif ((serializationType == ____exports.SerializationType.NONE) and __TS__InstanceOf(oldObject, Set)) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLSetBrand) then
        newObject = __TS__New(Set)
    elseif ((serializationType == ____exports.SerializationType.NONE) and isClass) or ((serializationType == ____exports.SerializationType.DESERIALIZE) and hasTSTLClassBrand) then
        newObject = cloneClass(nil, oldObject)
    else
        newObject = {}
    end
    if serializationType == ____exports.SerializationType.SERIALIZE then
        local newTable = newObject
        if __TS__InstanceOf(oldObject, Map) then
            newTable[TSTL_MAP_BRAND] = ""
        elseif __TS__InstanceOf(oldObject, Set) then
            newTable[TSTL_SET_BRAND] = ""
        elseif isClass then
            newTable[TSTL_CLASS_BRAND] = ""
        end
    end
    if __TS__InstanceOf(oldObject, Map) then
        for ____, ____value in __TS__Iterator(
            oldObject:entries()
        ) do
            local key
            key = ____value[1]
            local value
            value = ____value[2]
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue17
                end
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue17::
        end
    elseif __TS__InstanceOf(oldObject, Set) then
        for ____, key in __TS__Iterator(
            oldObject:values()
        ) do
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue20
                end
                local value = ""
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue20::
        end
    else
        for key, value in pairs(oldObject) do
            do
                if ____exports.isBrand(nil, key) then
                    goto __continue23
                end
                deepCopyValue(nil, oldObject, newObject, key, value, traversalDescription, serializationType)
            end
            ::__continue23::
        end
    end
    return newObject
end
function isTSTLClass(self, object)
    local metatable = getmetatable(object)
    if metatable == nil then
        return false
    end
    if __TS__InstanceOf(object, Map) or __TS__InstanceOf(object, Set) then
        return false
    end
    local numKeys = 0
    for key in pairs(metatable) do
        numKeys = numKeys + 1
        if not TSTL_CLASS_KEYS:has(key) then
            return false
        end
    end
    return numKeys == TSTL_CLASS_KEYS.size
end
function cloneClass(self, oldClass)
    local metatable = getmetatable(oldClass)
    local newClass = getNewClassFromMetatable(nil, metatable)
    for key, value in pairs(oldClass) do
        newClass[key] = value
    end
    return newClass
end
function getNewClassFromMetatable(self, metatable)
    local instance = setmetatable({}, metatable.constructor.prototype)
    local newClass = instance
    newClass:____constructor()
    return newClass
end
function ____exports.isBrand(self, key)
    return ((((key == TSTL_MAP_BRAND) or (key == TSTL_SET_BRAND)) or (key == TSTL_CLASS_BRAND)) or (key == TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND)) or (key == VECTOR_BRAND)
end
function deepCopyValue(self, oldObject, newObject, key, value, traversalDescription, serializationType)
    local valueType = type(value)
    validateValue(nil, value, valueType, traversalDescription)
    local convertNumberKeysToString = false
    local isTSTLObject = __TS__InstanceOf(oldObject, Map) or __TS__InstanceOf(oldObject, Set)
    local keyType = type(key)
    if ((serializationType == ____exports.SerializationType.SERIALIZE) and isTSTLObject) and (keyType == "number") then
        convertNumberKeysToString = true
        local newTable = newObject
        newTable[TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND] = ""
        if DEBUG then
            log("deepCopy is converting a TSTL map with number keys to strings.")
        end
    end
    local newValue
    if isVector(nil, value) then
        local vector = value
        newValue = copyVector(nil, vector, serializationType)
    elseif ____exports.isSerializedVector(nil, value) and (serializationType == ____exports.SerializationType.DESERIALIZE) then
        local serializedVector = value
        newValue = ____exports.deserializeVector(nil, serializedVector)
    elseif valueType == "table" then
        local ____table = value
        traversalDescription = ____exports.addTraversalDescription(nil, key, traversalDescription)
        newValue = ____exports.deepCopy(nil, ____table, serializationType, traversalDescription)
    else
        newValue = value
    end
    if __TS__InstanceOf(newObject, Map) then
        newObject:set(key, newValue)
    elseif __TS__InstanceOf(newObject, Set) then
        newObject:add(key)
    else
        local keyToUse = (convertNumberKeysToString and tostring(key)) or key
        newObject[keyToUse] = newValue
    end
end
function copyVector(self, vector, serializationType)
    if serializationType == ____exports.SerializationType.SERIALIZE then
        local vectorTable = {}
        vectorTable.X = vector.X
        vectorTable.Y = vector.Y
        vectorTable[VECTOR_BRAND] = ""
        return vectorTable
    end
    local newVector = Vector(vector.X, vector.Y)
    return newVector
end
function ____exports.deserializeVector(self, vectorTable)
    local xString = vectorTable.X
    local x = tonumber(xString)
    if x == nil then
        error("Failed to read the X value of a serialized vector.")
    end
    local yString = vectorTable.Y
    local y = tonumber(yString)
    if y == nil then
        error("Failed to read the Y value of a serialized vector.")
    end
    return Vector(x, y)
end
function checkMetatable(self, ____table, traversalDescription)
    local metatable = getmetatable(____table)
    if metatable == nil then
        return
    end
    local tableDescription = ((traversalDescription == "") and "the table to copy") or (("\"" .. traversalDescription) .. "\"")
    error(("The deepCopy function detected that " .. tableDescription) .. " has a metatable. Copying tables with metatables is not supported (unless they are TypeScriptToLua Maps, Sets, or Classes).")
end
function validateValue(self, value, valueType, traversalDescription)
    if isVector(nil, value) then
        return
    end
    if (((valueType == "function") or (valueType == "nil")) or (valueType == "thread")) or (valueType == "userdata") then
        error(((("The deepCopy function detected that \"" .. traversalDescription) .. "\" is type ") .. valueType) .. ", which is not supported.")
    end
end
function ____exports.addTraversalDescription(self, key, traversalDescription)
    if traversalDescription ~= "" then
        traversalDescription = traversalDescription .. " --> "
    end
    traversalDescription = traversalDescription .. tostring(key)
    return traversalDescription
end
function ____exports.isSerializedVector(self, object)
    local objectType = type(object)
    if objectType ~= "table" then
        return false
    end
    local ____table = object
    return ((____table[VECTOR_BRAND] ~= nil) and (____table.X ~= nil)) and (____table.Y ~= nil)
end
____exports.SerializationType = SerializationType or ({})
____exports.SerializationType.NONE = 0
____exports.SerializationType[____exports.SerializationType.NONE] = "NONE"
____exports.SerializationType.SERIALIZE = 1
____exports.SerializationType[____exports.SerializationType.SERIALIZE] = "SERIALIZE"
____exports.SerializationType.DESERIALIZE = 2
____exports.SerializationType[____exports.SerializationType.DESERIALIZE] = "DESERIALIZE"
TSTL_CLASS_KEYS = __TS__New(Set, {"____constructor", "__index", "constructor"})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.constantsInternal"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.TSTL_MAP_BRAND = "__TSTL_MAP"
____exports.TSTL_SET_BRAND = "__TSTL_SET"
____exports.TSTL_CLASS_BRAND = "__TSTL_CLASS"
____exports.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = "__TSTL_OBJECT_WITH_NUMBER_KEYS"
____exports.VECTOR_BRAND = "__VECTOR"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.debug"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.DEBUG = false
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.log"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayToString = ____array.arrayToString
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
function ____exports.getDebugPrependString(self, msg, numParentFunctions)
    if numParentFunctions == nil then
        numParentFunctions = 3
    end
    if debug ~= nil then
        local debugTable = debug.getinfo(numParentFunctions)
        if debugTable ~= nil then
            return (((tostring(debugTable.name) .. ":") .. tostring(debugTable.linedefined)) .. " - ") .. msg
        end
    end
    if getParentFunctionDescription ~= nil then
        return (tostring(
            getParentFunctionDescription(numParentFunctions + 1)
        ) .. " - ") .. msg
    end
    return msg
end
function ____exports.log(msg)
    local debugMsg = ____exports.getDebugPrependString(nil, msg)
    Isaac.DebugString(debugMsg)
end
function ____exports.logAllFlags(flags, flagEnum, description)
    if description == nil then
        description = ""
    end
    if description ~= "" then
        description = description .. " "
    end
    ____exports.log(("Logging all " .. description) .. "flags:")
    for key, value in pairs(flagEnum) do
        if hasFlag(nil, flags, value) then
            ____exports.log(
                "- Has flag: " .. tostring(key)
            )
        end
    end
end
function ____exports.logAllDamageFlags(flags)
    ____exports.logAllFlags(flags, DamageFlag, "damage")
end
function ____exports.logAllEntityFlags(flags)
    ____exports.logAllFlags(flags, EntityFlag, "entity")
end
function ____exports.logAllGameStateFlags()
    local game = Game()
    ____exports.log("Logging all game state flags:")
    for ____, ____value in ipairs(
        __TS__ObjectEntries(GameStateFlag)
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        local gameStateFlag = value
        local flagValue = game:GetStateFlag(gameStateFlag)
        if flagValue then
            ____exports.log("- Has flag: " .. key)
        end
    end
end
function ____exports.logAllProjectileFlags(flags)
    ____exports.logAllFlags(flags, ProjectileFlags, "projectile")
end
function ____exports.logAllUseFlags(flags)
    ____exports.logAllFlags(flags, UseFlag, "use")
end
function ____exports.logArray(array)
    local arrayString = arrayToString(nil, array)
    ____exports.log("Array: " .. arrayString)
end
function ____exports.logColor(color)
    ____exports.log(
        (((((((((((("Color: R" .. tostring(color.R)) .. ", G") .. tostring(color.G)) .. ", B") .. tostring(color.B)) .. ", A") .. tostring(color.A)) .. ", RO") .. tostring(color.RO)) .. ", BO") .. tostring(color.BO)) .. ", GO") .. tostring(color.GO)
    )
end
function ____exports.logEntity(entity)
    ____exports.log(
        (((("Entity: " .. tostring(entity.Type)) .. ".") .. tostring(entity.Variant)) .. ".") .. tostring(entity.SubType)
    )
end
function ____exports.logKColor(kColor)
    ____exports.log(
        (((((("Color: R" .. tostring(kColor.Red)) .. ", G") .. tostring(kColor.Green)) .. ", B") .. tostring(kColor.Blue)) .. ", A") .. tostring(kColor.Alpha)
    )
end
function ____exports.logMap(map)
    ____exports.log("Printing out a TSTL Map:")
    for ____, ____value in __TS__Iterator(
        map:entries()
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        ____exports.log(
            (("  Key: " .. tostring(key)) .. ", Value: ") .. tostring(value)
        )
    end
    ____exports.log(
        "The size of the map was: " .. tostring(map.size)
    )
end
function ____exports.logTable(____table)
    ____exports.log("Printing out a Lua table:")
    for key, value in pairs(____table) do
        ____exports.log(
            (("  Key: " .. tostring(key)) .. ", Value: ") .. tostring(value)
        )
    end
end
function ____exports.logSet(set)
    ____exports.log("Printing out a TSTL Set:")
    for ____, value in __TS__Iterator(
        set:values()
    ) do
        ____exports.log(
            "  Value: " .. tostring(value)
        )
    end
    ____exports.log(
        "The size of the set was: " .. tostring(set.size)
    )
end
function ____exports.logVector(vector)
    ____exports.log(
        ((("Vector: (" .. tostring(vector.X)) .. ", ") .. tostring(vector.Y)) .. ")"
    )
end
function ____exports.setLogFunctionsGlobal(self)
    local globals = _G
    globals.log = ____exports.log
    globals.logAllDamageFlags = ____exports.logAllDamageFlags
    globals.logAllEntityFlags = ____exports.logAllEntityFlags
    globals.logAllFlags = ____exports.logAllFlags
    globals.logAllGameStateFlags = ____exports.logAllGameStateFlags
    globals.logAllProjectileFlags = ____exports.logAllProjectileFlags
    globals.logAllUseFlags = ____exports.logAllUseFlags
    globals.logArray = ____exports.logArray
    globals.logColor = ____exports.logColor
    globals.logEntity = ____exports.logEntity
    globals.logKColor = ____exports.logKColor
    globals.logMap = ____exports.logMap
    globals.logTable = ____exports.logTable
    globals.logSet = ____exports.logSet
    globals.logVector = ____exports.logVector
end
function ____exports.traceback(self)
    if debug ~= nil then
        local tracebackMsg = debug.traceback()
        Isaac.DebugString(tracebackMsg)
        return
    end
    if sandboxTraceback ~= nil then
        sandboxTraceback()
        return
    end
    Isaac.DebugString("Error: Cannot perform a traceback since --luadebug is not enabled.")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.array"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local getRandomInt = ____random.getRandomInt
local nextSeed = ____random.nextSeed
function ____exports.arrayShuffleInPlace(self, array, seed)
    if seed == nil then
        seed = Random()
    end
    local currentIndex = #array
    local randomIndex
    while currentIndex > 0 do
        currentIndex = currentIndex - 1
        seed = nextSeed(nil, seed)
        randomIndex = ____exports.getRandomArrayIndex(nil, array, seed)
        array[currentIndex + 1], array[randomIndex + 1] = array[randomIndex + 1], array[currentIndex + 1]
    end
end
function ____exports.getRandomArrayIndex(self, array, seed)
    if seed == nil then
        seed = Random()
    end
    if #array == 0 then
        error("Failed to get a random array index since the provided array is empty.")
    end
    local randomIndex = getRandomInt(nil, 0, #array - 1, seed)
    return randomIndex
end
function ____exports.arrayEmpty(self, array)
    __TS__ArraySplice(array, 0, #array)
end
function ____exports.arrayEquals(self, array1, array2)
    if #array1 ~= #array2 then
        return false
    end
    do
        local i = 0
        while i < #array1 do
            if array1[i + 1] ~= array2[i + 1] then
                return false
            end
            i = i + 1
        end
    end
    return true
end
function ____exports.arrayInArray(self, arrayToMatch, parentArray)
    for ____, element in ipairs(parentArray) do
        if ____exports.arrayEquals(nil, element, arrayToMatch) then
            return true
        end
    end
    return false
end
function ____exports.arrayInit(self, defaultValue, size)
    local array = {}
    do
        local i = 0
        while i < size do
            __TS__ArrayPush(array, defaultValue)
            i = i + 1
        end
    end
    return array
end
function ____exports.arrayShuffle(self, originalArray, seed)
    if seed == nil then
        seed = Random()
    end
    local array = {
        table.unpack(originalArray)
    }
    ____exports.arrayShuffleInPlace(nil, array, seed)
    return array
end
function ____exports.arraySum(self, array)
    local sum = 0
    for ____, element in ipairs(array) do
        sum = sum + element
    end
    return sum
end
function ____exports.arrayToString(self, array)
    local strings = {}
    for ____, value in ipairs(array) do
        __TS__ArrayPush(
            strings,
            tostring(value)
        )
    end
    return ("[" .. table.concat(strings, ", " or ",")) .. "]"
end
function ____exports.arrayRemove(self, originalArray, element)
    local array = {
        table.unpack(originalArray)
    }
    local index = __TS__ArrayIndexOf(array, element)
    __TS__ArraySplice(array, index, 1)
    return array
end
function ____exports.arrayRemoveInPlace(self, array, element)
    local index = __TS__ArrayIndexOf(array, element)
    if index == -1 then
        return false
    end
    __TS__ArraySplice(array, index, 1)
    return true
end
function ____exports.getRandomArrayElement(self, array, seed)
    if seed == nil then
        seed = Random()
    end
    local randomIndex = ____exports.getRandomArrayIndex(nil, array, seed)
    return array[randomIndex + 1]
end
function ____exports.isArray(self, ____table)
    local metatable = getmetatable(____table)
    if metatable ~= nil then
        return false
    end
    local numEntries = 0
    for key in pairs(____table) do
        numEntries = numEntries + 1
        local keyType = type(key)
        if keyType ~= "number" then
            return false
        end
    end
    do
        local i = 1
        while i <= numEntries do
            local element = ____table[i]
            if element == nil then
                return false
            end
            i = i + 1
        end
    end
    return true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.flag"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.addFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        flags = flags | f
    end
    return flags
end
function ____exports.hasFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        if not ((flags & f) == f) then
            return false
        end
    end
    return true
end
function ____exports.isSelfDamage(self, damageFlags)
    return ____exports.hasFlag(nil, damageFlags, DamageFlag.DAMAGE_NO_PENALTIES) or ____exports.hasFlag(nil, damageFlags, DamageFlag.DAMAGE_RED_HEARTS)
end
function ____exports.removeFlag(self, flags, ...)
    local flag = {...}
    for ____, f in ipairs(flag) do
        flags = flags & ~f
    end
    return flags
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.vector"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
function ____exports.copyVector(self, vector)
    return Vector(vector.X, vector.Y)
end
function ____exports.directionToVector(self, direction)
    repeat
        local ____switch4 = direction
        local ____cond4 = ____switch4 == Direction.DOWN
        if ____cond4 then
            do
                return Vector(0, 1)
            end
        end
        ____cond4 = ____cond4 or (____switch4 == Direction.LEFT)
        if ____cond4 then
            do
                return Vector(-1, 0)
            end
        end
        ____cond4 = ____cond4 or (____switch4 == Direction.RIGHT)
        if ____cond4 then
            do
                return Vector(1, 0)
            end
        end
        ____cond4 = ____cond4 or (____switch4 == Direction.UP)
        if ____cond4 then
            do
                return Vector(0, -1)
            end
        end
        ____cond4 = ____cond4 or (____switch4 == Direction.NO_DIRECTION)
        if ____cond4 then
            do
                return Vector.Zero
            end
        end
        do
            do
                ensureAllCases(nil, direction)
                return Vector.Zero
            end
        end
    until true
end
function ____exports.getOneVector(self)
    return Vector(1, 1)
end
function ____exports.getZeroVector(self)
    return Vector(0, 0)
end
function ____exports.isVector(self, object)
    local objectType = type(object)
    if objectType ~= "userdata" then
        return false
    end
    local metatable = getmetatable(object)
    if metatable == nil then
        return false
    end
    local vectorMetatable = metatable
    return vectorMetatable.__type == "Vector"
end
function ____exports.vectorToDirection(self, vector)
    local degrees = vector:GetAngleDegrees()
    if (degrees > -45) and (degrees < 45) then
        return Direction.RIGHT
    end
    if (degrees >= 45) and (degrees <= 135) then
        return Direction.DOWN
    end
    if (degrees <= -45) and (degrees >= -135) then
        return Direction.UP
    end
    if (degrees > 135) or (degrees < -135) then
        return Direction.LEFT
    end
    return Direction.NO_DIRECTION
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.util"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local HEX_STRING_LENGTH = 6
function ____exports.copySet(self, oldSet)
    local newSet = __TS__New(Set)
    for ____, value in __TS__Iterator(
        oldSet:values()
    ) do
        newSet:add(value)
    end
    return newSet
end
____exports.ensureAllCases = function(____, obj) return obj end
function ____exports.getEnumValues(self, transpiledEnum)
    local enumValues = {}
    for key, value in pairs(transpiledEnum) do
        if type(key) == "string" then
            __TS__ArrayPush(enumValues, value)
        end
    end
    __TS__ArraySort(enumValues)
    return enumValues
end
function ____exports.hexToKColor(self, hexString, alpha)
    hexString = __TS__StringReplace(hexString, "#", "")
    if #hexString ~= HEX_STRING_LENGTH then
        error(
            ("Hex strings must be of length " .. tostring(HEX_STRING_LENGTH)) .. "."
        )
    end
    local rString = __TS__StringSubstr(hexString, 0, 2)
    local R = tonumber("0x" .. rString)
    if R == nil then
        error(("Failed to convert `0x" .. rString) .. "` to a number.")
    end
    local gString = __TS__StringSubstr(hexString, 2, 2)
    local G = tonumber("0x" .. gString)
    if G == nil then
        error(("Failed to convert `0x" .. gString) .. "` to a number.")
    end
    local bString = __TS__StringSubstr(hexString, 4, 2)
    local B = tonumber("0x" .. bString)
    if B == nil then
        error(("Failed to convert `0x" .. bString) .. "` to a number.")
    end
    local base = 255
    return KColor(R / base, G / base, B / base, alpha)
end
function ____exports.isGreedMode(self)
    local game = Game()
    return (game.Difficulty == Difficulty.DIFFICULTY_GREED) or (game.Difficulty == Difficulty.DIFFICULTY_GREEDIER)
end
function ____exports.onSetSeed(self)
    local game = Game()
    local seeds = game:GetSeeds()
    local customRun = seeds:IsCustomRun()
    local challenge = Isaac.GetChallenge()
    return (challenge == Challenge.CHALLENGE_NULL) and customRun
end
function ____exports.printConsole(self, msg)
    Isaac.ConsoleOutput(msg .. "\n")
end
function ____exports.tableClear(self, ____table)
    for key in pairs(____table) do
        ____table[key] = nil
    end
end
function ____exports.teleport(self, roomIndex, direction, roomTransitionAnim)
    if direction == nil then
        direction = Direction.NO_DIRECTION
    end
    if roomTransitionAnim == nil then
        roomTransitionAnim = RoomTransitionAnim.TELEPORT
    end
    local game = Game()
    local level = game:GetLevel()
    level.LeaveDoor = -1
    game:StartRoomTransition(roomIndex, direction, roomTransitionAnim)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.main"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local postPlayerInit, preGameExit, postNewLevel, postNewRoom, restoreDefaultsAll, restoreDefaults, clearAndCopyAllElements, mod, loadedDataOnThisRun
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local SerializationType = ____deepCopy.SerializationType
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local tableClear = ____util.tableClear
local ____SaveData = require("lua_modules.isaacscript-common.dist.types.SaveData")
local SaveDataKeys = ____SaveData.SaveDataKeys
local ____load = require("lua_modules.isaacscript-common.dist.features.saveDataManager.load")
local loadFromDisk = ____load.loadFromDisk
local ____maps = require("lua_modules.isaacscript-common.dist.features.saveDataManager.maps")
local saveDataConditionalFuncMap = ____maps.saveDataConditionalFuncMap
local saveDataDefaultsMap = ____maps.saveDataDefaultsMap
local saveDataMap = ____maps.saveDataMap
local ____save = require("lua_modules.isaacscript-common.dist.features.saveDataManager.save")
local saveToDisk = ____save.saveToDisk
function postPlayerInit(self)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, ____exports.FEATURE_NAME)
        error(msg)
    end
    if loadedDataOnThisRun then
        return
    end
    loadedDataOnThisRun = true
    loadFromDisk(nil, mod, saveDataMap)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local isContinued = gameFrameCount ~= 0
    if not isContinued then
        restoreDefaultsAll(nil)
    end
end
function preGameExit(self)
    if mod == nil then
        local msg = getUpgradeErrorMsg(nil, ____exports.FEATURE_NAME)
        error(msg)
    end
    saveToDisk(nil, mod, saveDataMap, saveDataConditionalFuncMap)
    restoreDefaultsAll(nil)
    loadedDataOnThisRun = false
end
function postNewLevel(self)
    restoreDefaults(nil, SaveDataKeys.Level)
end
function postNewRoom(self)
    restoreDefaults(nil, SaveDataKeys.Room)
end
function restoreDefaultsAll(self)
    restoreDefaults(nil, SaveDataKeys.Run)
    restoreDefaults(nil, SaveDataKeys.Level)
    restoreDefaults(nil, SaveDataKeys.Room)
end
function restoreDefaults(self, childTableName)
    if ((childTableName ~= SaveDataKeys.Run) and (childTableName ~= SaveDataKeys.Level)) and (childTableName ~= SaveDataKeys.Room) then
        error("Unknown child table name of: " .. childTableName)
    end
    for subscriberName, saveData in pairs(saveDataMap) do
        do
            local childTable = saveData[childTableName]
            if childTable == nil then
                goto __continue14
            end
            local saveDataDefaults = saveDataDefaultsMap[subscriberName]
            if saveDataDefaults == nil then
                error("Failed to find the default copy of the save data for subscriber: " .. subscriberName)
            end
            local childTableDefaults = saveDataDefaults[childTableName]
            if childTableDefaults == nil then
                error((("Failed to find the default copy of the child table \"" .. childTableName) .. "\" for subscriber: ") .. subscriberName)
            end
            local childTableDefaultsTable = childTableDefaults
            local childTableDefaultsTableCopy = deepCopy(nil, childTableDefaultsTable, SerializationType.NONE, (subscriberName .. " --> ") .. childTableName)
            clearAndCopyAllElements(nil, childTable, childTableDefaultsTableCopy)
        end
        ::__continue14::
    end
end
function clearAndCopyAllElements(self, oldTable, newTable)
    tableClear(nil, oldTable)
    for key, value in pairs(newTable) do
        oldTable[key] = value
    end
end
____exports.FEATURE_NAME = "save data manager"
mod = nil
loadedDataOnThisRun = false
function ____exports.saveDataManagerInit(self, incomingMod)
    mod = incomingMod
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, postPlayerInit)
    mod:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, preGameExit)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, postNewLevel)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
function ____exports.isSaveDataManagerInitialized(self)
    return mod ~= nil
end
function ____exports.forceSaveDataManagerSave(self)
    if mod == nil then
        return
    end
    saveToDisk(nil, mod, saveDataMap, saveDataConditionalFuncMap)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.SaveData"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.SaveDataKeys = SaveDataKeys or ({})
____exports.SaveDataKeys.Persistent = "persistent"
____exports.SaveDataKeys.Run = "run"
____exports.SaveDataKeys.Level = "level"
____exports.SaveDataKeys.Room = "room"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.load"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local readSaveDatFile, tryLoadModData, DEFAULT_MOD_DATA
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____json = require("lua_modules.isaacscript-common.dist.functions.json")
local jsonDecode = ____json.jsonDecode
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____merge = require("lua_modules.isaacscript-common.dist.features.saveDataManager.merge")
local merge = ____merge.merge
function readSaveDatFile(self, mod)
    local isaacFrameCount = Isaac.GetFrameCount()
    local ok, jsonStringOrErrMsg = pcall(tryLoadModData, mod)
    if not ok then
        log(
            (("Failed to read from the \"save#.dat\" file on Isaac frame " .. tostring(isaacFrameCount)) .. ": ") .. jsonStringOrErrMsg
        )
        return DEFAULT_MOD_DATA
    end
    if jsonStringOrErrMsg == nil then
        return DEFAULT_MOD_DATA
    end
    local jsonStringTrimmed = __TS__StringTrim(jsonStringOrErrMsg)
    if jsonStringTrimmed == "" then
        return DEFAULT_MOD_DATA
    end
    return jsonStringTrimmed
end
function tryLoadModData(mod)
    return mod:LoadData()
end
DEFAULT_MOD_DATA = "{}"
function ____exports.loadFromDisk(self, mod, oldSaveData)
    if not mod:HasData() then
        return
    end
    local jsonString = readSaveDatFile(nil, mod)
    local newSaveData = jsonDecode(nil, jsonString)
    if DEBUG then
        log("Converted data from the \"save#.dat\" to a Lua table.")
    end
    for key, value in pairs(newSaveData) do
        do
            local keyType = type(key)
            if keyType ~= "string" then
                goto __continue5
            end
            local valueType = type(value)
            if valueType ~= "table" then
                goto __continue5
            end
            local oldSaveDataForSubscriber = oldSaveData[key]
            if oldSaveDataForSubscriber == nil then
                goto __continue5
            end
            if DEBUG then
                log(
                    "Merging in stored data for feature: " .. tostring(key)
                )
            end
            merge(nil, oldSaveDataForSubscriber, value, key)
        end
        ::__continue5::
    end
    log("The save data manager loaded data from the \"save#.dat\" file.")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.json"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local tryEncode, tryDecode
local json = require("json")
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
function tryEncode(____table)
    return json.encode(____table)
end
function tryDecode(jsonString)
    return json.decode(jsonString)
end
function ____exports.jsonEncode(self, ____table)
    local ok, jsonStringOrErrMsg = pcall(tryEncode, ____table)
    if not ok then
        error("Failed to convert the Lua table to JSON: " .. jsonStringOrErrMsg)
    end
    return jsonStringOrErrMsg
end
function ____exports.jsonDecode(self, jsonString)
    local ok, luaTableOrErrMsg = pcall(tryDecode, jsonString)
    if not ok then
        log("Failed to convert the JSON string to a Lua table: " .. jsonString)
        return {}
    end
    return luaTableOrErrMsg
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.merge"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local mergeArray, mergeTSTLObject, mergeTable, mergeVector
local ____constantsInternal = require("lua_modules.isaacscript-common.dist.constantsInternal")
local TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND = ____constantsInternal.TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND
local ____debug = require("lua_modules.isaacscript-common.dist.debug")
local DEBUG = ____debug.DEBUG
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local isArray = ____array.isArray
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local addTraversalDescription = ____deepCopy.addTraversalDescription
local deepCopy = ____deepCopy.deepCopy
local deserializeVector = ____deepCopy.deserializeVector
local isBrand = ____deepCopy.isBrand
local isSerializedVector = ____deepCopy.isSerializedVector
local SerializationType = ____deepCopy.SerializationType
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local tableClear = ____util.tableClear
function ____exports.merge(self, oldObject, newTable, traversalDescription)
    local oldObjectType = type(oldObject)
    if oldObjectType ~= "table" then
        error("The first argument given to the merge function is not a table.")
    end
    local newTableType = type(newTable)
    if newTableType ~= "table" then
        error("The second argument given to the merge function is not a table.")
    end
    if DEBUG then
        log("merge is operating on: " .. traversalDescription)
    end
    if mergeArray(nil, oldObject, newTable) then
        return
    end
    if __TS__InstanceOf(oldObject, Map) or __TS__InstanceOf(oldObject, Set) then
        mergeTSTLObject(nil, oldObject, newTable, traversalDescription)
    else
        mergeTable(nil, oldObject, newTable, traversalDescription)
    end
end
function mergeArray(self, oldObject, newTable)
    local oldArray = oldObject
    if (not isArray(nil, oldArray)) or (not isArray(nil, newTable)) then
        return false
    end
    tableClear(nil, oldArray)
    for key, value in pairs(newTable) do
        oldArray[key] = value
    end
    return true
end
function mergeTSTLObject(self, oldObject, newTable, traversalDescription)
    oldObject:clear()
    local convertStringKeysToNumbers = newTable[TSTL_OBJECT_WITH_NUMBER_KEYS_BRAND] ~= nil
    for key, value in pairs(newTable) do
        do
            if isBrand(nil, key) then
                goto __continue13
            end
            local keyToUse = key
            if convertStringKeysToNumbers then
                local numberKey = tonumber(key)
                if numberKey == nil then
                    goto __continue13
                end
                keyToUse = numberKey
            end
            if __TS__InstanceOf(oldObject, Map) then
                local valueType = type(value)
                local valueCopy
                if valueType == "table" then
                    valueCopy = deepCopy(nil, value, SerializationType.DESERIALIZE, traversalDescription)
                else
                    valueCopy = value
                end
                oldObject:set(keyToUse, valueCopy)
            elseif __TS__InstanceOf(oldObject, Set) then
                oldObject:add(keyToUse)
            end
        end
        ::__continue13::
    end
end
function mergeTable(self, oldTable, newTable, traversalDescription)
    for key, value in pairs(newTable) do
        do
            if isBrand(nil, key) then
                goto __continue22
            end
            if mergeVector(nil, oldTable, key, value) then
                goto __continue22
            end
            local valueType = type(value)
            if valueType == "table" then
                local oldValue = oldTable[key]
                local oldValueType = type(oldValue)
                if oldValueType == "table" then
                    traversalDescription = addTraversalDescription(nil, key, traversalDescription)
                    ____exports.merge(nil, oldValue, value, traversalDescription)
                end
            else
                if DEBUG then
                    log(
                        (("Merging key \"" .. tostring(key)) .. "\" with value: ") .. tostring(value)
                    )
                end
                oldTable[key] = value
            end
        end
        ::__continue22::
    end
end
function mergeVector(self, oldTable, key, value)
    if not isSerializedVector(nil, value) then
        return false
    end
    local serializedVector = value
    local vector = deserializeVector(nil, serializedVector)
    oldTable[key] = vector
    return true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.maps"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.saveDataMap = {}
____exports.saveDataDefaultsMap = {}
____exports.saveDataConditionalFuncMap = __TS__New(Map)
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.saveDataManager.save"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local getAllSaveDataToWriteToDisk
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local SerializationType = ____deepCopy.SerializationType
local ____json = require("lua_modules.isaacscript-common.dist.functions.json")
local jsonEncode = ____json.jsonEncode
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
function getAllSaveDataToWriteToDisk(self, saveDataMap, saveDataConditionalFuncMap)
    local allSaveData = {}
    for subscriberName, saveData in pairs(saveDataMap) do
        do
            if saveData.dontSave ~= nil then
                goto __continue4
            end
            local conditionalFunc = saveDataConditionalFuncMap:get(subscriberName)
            if conditionalFunc ~= nil then
                local shouldSave = conditionalFunc(nil)
                if not shouldSave then
                    goto __continue4
                end
            end
            local saveDataWithoutRoom = {persistent = saveData.persistent, run = saveData.run, level = saveData.level}
            local saveDataCopy = deepCopy(nil, saveDataWithoutRoom, SerializationType.SERIALIZE, subscriberName)
            allSaveData[subscriberName] = saveDataCopy
        end
        ::__continue4::
    end
    return allSaveData
end
function ____exports.saveToDisk(self, mod, saveDataMap, saveDataConditionalFuncMap)
    local allSaveData = getAllSaveDataToWriteToDisk(nil, saveDataMap, saveDataConditionalFuncMap)
    local jsonString = jsonEncode(nil, allSaveData)
    mod:SaveData(jsonString)
    log("The save data manager wrote data to the \"save#.dat\" file.")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.initialized"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local initialized = false
function ____exports.areFeaturesInitialized(self)
    return initialized
end
function ____exports.setFeaturesInitialized(self)
    initialized = true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.player"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local EXCLUDED_CHARACTERS
local ____HealthType = require("lua_modules.isaacscript-common.dist.types.HealthType")
local HealthType = ____HealthType.HealthType
local ____PocketItemType = require("lua_modules.isaacscript-common.dist.types.PocketItemType")
local PocketItemType = ____PocketItemType.PocketItemType
local ____bitwise = require("lua_modules.isaacscript-common.dist.functions.bitwise")
local getKBitOfN = ____bitwise.getKBitOfN
local getNumBitsOfN = ____bitwise.getNumBitsOfN
local ____collectibleSet = require("lua_modules.isaacscript-common.dist.functions.collectibleSet")
local getCollectibleSet = ____collectibleSet.getCollectibleSet
function ____exports.getPlayers(self, performExclusions)
    if performExclusions == nil then
        performExclusions = false
    end
    local game = Game()
    local players = {}
    do
        local i = 0
        while i < game:GetNumPlayers() do
            do
                local player = Isaac.GetPlayer(i)
                if player == nil then
                    goto __continue53
                end
                if ____exports.isChildPlayer(nil, player) then
                    goto __continue53
                end
                local character = player:GetPlayerType()
                if performExclusions and EXCLUDED_CHARACTERS:has(character) then
                    goto __continue53
                end
                __TS__ArrayPush(players, player)
            end
            ::__continue53::
            i = i + 1
        end
    end
    return players
end
function ____exports.getPlayerIndex(self, player)
    local character = player:GetPlayerType()
    local collectibleToUse = ((character == PlayerType.PLAYER_LAZARUS2_B) and CollectibleType.COLLECTIBLE_INNER_EYE) or CollectibleType.COLLECTIBLE_SAD_ONION
    local collectibleRNG = player:GetCollectibleRNG(collectibleToUse)
    local seed = collectibleRNG:GetSeed()
    return seed
end
function ____exports.isChildPlayer(self, player)
    return player.Parent ~= nil
end
EXCLUDED_CHARACTERS = __TS__New(Set, {PlayerType.PLAYER_ESAU, PlayerType.PLAYER_THESOUL_B})
function ____exports.addCollectibleCostume(self, player, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return
    end
    player:AddCostume(itemConfigItem, false)
end
function ____exports.addTrinketCostume(self, player, trinketType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigTrinket = itemConfig:GetTrinket(trinketType)
    if itemConfigTrinket == nil then
        return
    end
    player:AddCostume(itemConfigTrinket, false)
end
function ____exports.anyPlayerCloserThan(self, position, distance)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.Position:Distance(position) <= distance then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerHasCollectible(self, collectibleType)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player:HasCollectible(collectibleType) then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerHasTrinket(self, trinketType)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player:HasTrinket(trinketType) then
            return true
        end
    end
    return false
end
function ____exports.anyPlayerIs(self, matchingCharacter)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if character == matchingCharacter then
            return true
        end
    end
    return false
end
function ____exports.getAzazelBrimstoneDistance(self, playerOrTearHeight)
    local tearHeight = tonumber(playerOrTearHeight)
    if tearHeight == nil then
        local player = playerOrTearHeight
        tearHeight = player.TearHeight
    end
    return 32 - (2.5 * tearHeight)
end
function ____exports.getClosestPlayer(self, position)
    local closestPlayer = nil
    local closestDistance = math.huge
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local distance = position:Distance(player.Position)
        if distance < closestDistance then
            closestPlayer = player
            closestDistance = distance
        end
    end
    if closestPlayer == nil then
        error("Failed to find the closest player.")
    end
    return closestPlayer
end
function ____exports.getDeathAnimationName(self, player)
    local character = player:GetPlayerType()
    local isLostTypeCharacter = (((character == PlayerType.PLAYER_THELOST) or (character == PlayerType.PLAYER_THELOST_B)) or (character == PlayerType.PLAYER_THESOUL)) or (character == PlayerType.PLAYER_THESOUL_B)
    return (isLostTypeCharacter and "LostDeath") or "Death"
end
function ____exports.getLastHeart(self, player)
    local hearts = player:GetHearts()
    local effectiveMaxHearts = player:GetEffectiveMaxHearts()
    local soulHearts = player:GetSoulHearts()
    local blackHearts = player:GetBlackHearts()
    local eternalHearts = player:GetEternalHearts()
    local boneHearts = player:GetBoneHearts()
    local rottenHearts = player:GetRottenHearts()
    local soulHeartSlots = soulHearts / 2
    local lastHeartIndex = (boneHearts + soulHeartSlots) - 1
    local isLastHeartBone = player:IsBoneHeart(lastHeartIndex)
    if isLastHeartBone then
        local isLastContainerEmpty = hearts <= (effectiveMaxHearts - 2)
        if isLastContainerEmpty then
            return HealthType.BONE
        end
        if rottenHearts > 0 then
            return HealthType.ROTTEN
        end
        if eternalHearts > 0 then
            return HealthType.ETERNAL
        end
        return HealthType.RED
    end
    if soulHearts > 0 then
        local numBits = getNumBitsOfN(nil, blackHearts)
        local finalBit = getKBitOfN(nil, numBits - 1, blackHearts)
        local isBlack = finalBit == 1
        if isBlack then
            return HealthType.BLACK
        end
        return HealthType.SOUL
    end
    if eternalHearts > 0 then
        return HealthType.ETERNAL
    end
    if rottenHearts > 0 then
        return HealthType.ROTTEN
    end
    return HealthType.RED
end
function ____exports.getNewestPlayer(self)
    local newestPlayer = nil
    local lowestFrame = math.huge
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.FrameCount < lowestFrame then
            newestPlayer = player
            lowestFrame = player.FrameCount
        end
    end
    if newestPlayer == nil then
        error("Failed to find the newest player.")
    end
    return newestPlayer
end
function ____exports.getFinalPlayer(self)
    local players = ____exports.getPlayers(nil)
    return players[#players]
end
function ____exports.getOpenTrinketSlot(self, player)
    local maxTrinkets = player:GetMaxTrinkets()
    local trinket0 = player:GetTrinket(0)
    local trinket1 = player:GetTrinket(1)
    if maxTrinkets == 1 then
        return ((trinket0 == TrinketType.TRINKET_NULL) and 0) or nil
    end
    if maxTrinkets == 2 then
        if trinket0 == TrinketType.TRINKET_NULL then
            return 0
        end
        return ((trinket1 == TrinketType.TRINKET_NULL) and 1) or nil
    end
    error(
        "The player has an unknown number of trinket slots: " .. tostring(maxTrinkets)
    )
    return nil
end
function ____exports.getPlayerCloserThan(self, position, distance)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        if player.Position:Distance(position) <= distance then
            return player
        end
    end
    return nil
end
function ____exports.getPlayerCollectibleMap(self, player)
    local collectibleSet = getCollectibleSet(nil)
    local collectibleMap = __TS__New(Map)
    for ____, collectibleType in __TS__Iterator(
        collectibleSet:values()
    ) do
        local collectibleNum = player:GetCollectibleNum(collectibleType, true)
        if collectibleNum > 0 then
            collectibleMap:set(collectibleType, collectibleNum)
        end
    end
    return collectibleMap
end
function ____exports.getPlayerFromIndex(self, playerIndex)
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local existingPlayerIndex = ____exports.getPlayerIndex(nil, player)
        if existingPlayerIndex == playerIndex then
            return player
        end
    end
    return nil
end
function ____exports.getPlayersOfType(self, playerType)
    local players = {}
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if character == playerType then
            __TS__ArrayPush(players, player)
        end
    end
    return players
end
function ____exports.getPlayerIndexVanilla(self, playerToFind)
    local game = Game()
    local playerToFindHash = GetPtrHash(playerToFind)
    do
        local i = 0
        while i < game:GetNumPlayers() do
            do
                local player = Isaac.GetPlayer(i)
                if player == nil then
                    goto __continue62
                end
                local playerHash = GetPtrHash(player)
                if playerHash == playerToFindHash then
                    return i
                end
            end
            ::__continue62::
            i = i + 1
        end
    end
    return nil
end
function ____exports.getPlayerNumAllHearts(self, player)
    local hearts = player:GetHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    local eternalHearts = player:GetEternalHearts()
    return ((hearts + soulHearts) + boneHearts) + eternalHearts
end
function ____exports.getPocketItems(self, player)
    local pocketItem = player:GetActiveItem(ActiveSlot.SLOT_POCKET)
    local hasPocketItem = pocketItem ~= CollectibleType.COLLECTIBLE_NULL
    local pocketItem2 = player:GetActiveItem(ActiveSlot.SLOT_POCKET2)
    local hasPocketItem2 = pocketItem2 ~= CollectibleType.COLLECTIBLE_NULL
    local maxPocketItems = player:GetMaxPocketItems()
    local pocketItems = {}
    local pocketItemIdentified = false
    local pocketItem2Identified = false
    do
        local slot = 0
        while slot < 4 do
            local card = player:GetCard(slot)
            local pill = player:GetPill(slot)
            if card ~= Card.CARD_NULL then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.CARD, id = card})
            elseif pill ~= PillColor.PILL_NULL then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.PILL, id = pill})
            elseif (hasPocketItem and (not hasPocketItem2)) and (not pocketItemIdentified) then
                pocketItemIdentified = true
                __TS__ArrayPush(pocketItems, {type = PocketItemType.ACTIVE_ITEM, id = pocketItem})
            elseif ((not hasPocketItem) and hasPocketItem2) and (not pocketItem2Identified) then
                pocketItem2Identified = true
                __TS__ArrayPush(pocketItems, {type = PocketItemType.DICE_BAG_DICE, id = pocketItem2})
            elseif hasPocketItem and hasPocketItem2 then
                __TS__ArrayPush(pocketItems, {type = PocketItemType.UNDETERMINABLE, id = 0})
            else
                __TS__ArrayPush(pocketItems, {type = PocketItemType.EMPTY, id = 0})
            end
            if (slot + 1) == maxPocketItems then
                break
            end
            slot = slot + 1
        end
    end
    return pocketItems
end
function ____exports.getTotalCharge(self, player, activeSlot)
    local activeCharge = player:GetActiveCharge(activeSlot)
    local batteryCharge = player:GetBatteryCharge(activeSlot)
    return activeCharge + batteryCharge
end
function ____exports.getTotalPlayerCollectibles(self, collectibleType)
    local numCollectibles = 0
    for ____, player in ipairs(
        ____exports.getPlayers(nil)
    ) do
        numCollectibles = numCollectibles + player:GetCollectibleNum(collectibleType)
    end
    return numCollectibles
end
function ____exports.hasLostCurse(self, player)
    local effects = player:GetEffects()
    return effects:HasNullEffect(NullItemID.ID_LOST_CURSE)
end
function ____exports.hasOpenActiveItemSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local activeItemPrimary = player:GetActiveItem(ActiveSlot.SLOT_PRIMARY)
    local activeItemSecondary = player:GetActiveItem(ActiveSlot.SLOT_SECONDARY)
    local hasSchoolbag = player:HasCollectible(CollectibleType.COLLECTIBLE_SCHOOLBAG)
    if hasSchoolbag then
        return (activeItemPrimary == CollectibleType.COLLECTIBLE_NULL) or (activeItemSecondary == CollectibleType.COLLECTIBLE_NULL)
    end
    return activeItemPrimary == CollectibleType.COLLECTIBLE_NULL
end
function ____exports.hasOpenPocketItemSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local pocketItems = ____exports.getPocketItems(nil, player)
    for ____, pocketItem in ipairs(pocketItems) do
        if pocketItem.type == PocketItemType.EMPTY then
            return true
        end
    end
    return false
end
function ____exports.hasOpenTrinketSlot(self, player)
    local character = player:GetPlayerType()
    if character == PlayerType.PLAYER_THESOUL_B then
        return false
    end
    local openTrinketSlot = ____exports.getOpenTrinketSlot(nil, player)
    return openTrinketSlot ~= nil
end
function ____exports.isBethany(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_BETHANY) or (character == PlayerType.PLAYER_BETHANY_B)
end
function ____exports.isFirstPlayer(self, player)
    return ____exports.getPlayerIndexVanilla(nil, player) == 0
end
function ____exports.isJacobOrEsau(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_JACOB) or (character == PlayerType.PLAYER_ESAU)
end
function ____exports.isKeeper(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_KEEPER) or (character == PlayerType.PLAYER_KEEPER_B)
end
function ____exports.isLost(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_THELOST) or (character == PlayerType.PLAYER_THELOST_B)
end
function ____exports.isTaintedLazarus(self, player)
    local character = player:GetPlayerType()
    return (character == PlayerType.PLAYER_LAZARUS_B) or (character == PlayerType.PLAYER_LAZARUS2_B)
end
function ____exports.removeCollectibleCostume(self, player, collectibleType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigItem = itemConfig:GetCollectible(collectibleType)
    if itemConfigItem == nil then
        return
    end
    player:RemoveCostume(itemConfigItem)
end
function ____exports.removeDeadEyeMultiplier(self, player)
    do
        local i = 0
        while i < 100 do
            player:ClearDeadEyeCharge()
            i = i + 1
        end
    end
end
function ____exports.removeTrinketCostume(self, player, trinketType)
    local itemConfig = Isaac.GetItemConfig()
    local itemConfigTrinket = itemConfig:GetTrinket(trinketType)
    if itemConfigTrinket == nil then
        return
    end
    player:RemoveCostume(itemConfigTrinket)
end
function ____exports.setBlindfold(self, player, enabled)
    local game = Game()
    local character = player:GetPlayerType()
    local challenge = Isaac.GetChallenge()
    if enabled then
        game.Challenge = Challenge.CHALLENGE_SOLAR_SYSTEM
        player:ChangePlayerType(character)
        game.Challenge = challenge
    else
        game.Challenge = Challenge.CHALLENGE_NULL
        player:ChangePlayerType(character)
        game.Challenge = challenge
        player:TryRemoveNullCostume(NullItemID.ID_BLINDFOLD)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.HealthType"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.HealthType = HealthType or ({})
____exports.HealthType.RED = 0
____exports.HealthType[____exports.HealthType.RED] = "RED"
____exports.HealthType.SOUL = 1
____exports.HealthType[____exports.HealthType.SOUL] = "SOUL"
____exports.HealthType.ETERNAL = 2
____exports.HealthType[____exports.HealthType.ETERNAL] = "ETERNAL"
____exports.HealthType.BLACK = 3
____exports.HealthType[____exports.HealthType.BLACK] = "BLACK"
____exports.HealthType.GOLDEN = 4
____exports.HealthType[____exports.HealthType.GOLDEN] = "GOLDEN"
____exports.HealthType.BONE = 5
____exports.HealthType[____exports.HealthType.BONE] = "BONE"
____exports.HealthType.ROTTEN = 6
____exports.HealthType[____exports.HealthType.ROTTEN] = "ROTTEN"
____exports.HealthType.MAX_HEARTS = 7
____exports.HealthType[____exports.HealthType.MAX_HEARTS] = "MAX_HEARTS"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.PocketItemType"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.PocketItemType = PocketItemType or ({})
____exports.PocketItemType.EMPTY = 0
____exports.PocketItemType[____exports.PocketItemType.EMPTY] = "EMPTY"
____exports.PocketItemType.CARD = 1
____exports.PocketItemType[____exports.PocketItemType.CARD] = "CARD"
____exports.PocketItemType.PILL = 2
____exports.PocketItemType[____exports.PocketItemType.PILL] = "PILL"
____exports.PocketItemType.ACTIVE_ITEM = 3
____exports.PocketItemType[____exports.PocketItemType.ACTIVE_ITEM] = "ACTIVE_ITEM"
____exports.PocketItemType.DICE_BAG_DICE = 4
____exports.PocketItemType[____exports.PocketItemType.DICE_BAG_DICE] = "DICE_BAG_DICE"
____exports.PocketItemType.UNDETERMINABLE = 5
____exports.PocketItemType[____exports.PocketItemType.UNDETERMINABLE] = "UNDETERMINABLE"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.bitwise"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getKBitOfN(self, k, n)
    return (n >> k) & 1
end
function ____exports.getNumBitsOfN(self, n)
    local numBits = 0
    while n > 0 do
        numBits = numBits + 1
        n = n >> 1
    end
    return numBits
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.collectibleSet"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local getMaxCollectibleID = ____collectibles.getMaxCollectibleID
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local copySet = ____util.copySet
local COLLECTIBLE_SET = __TS__New(Set)
local function initCollectibleSet(self)
    local itemConfig = Isaac.GetItemConfig()
    do
        local collectibleType = 1
        while collectibleType <= getMaxCollectibleID(nil) do
            local itemConfigItem = itemConfig:GetCollectible(collectibleType)
            if itemConfigItem ~= nil then
                COLLECTIBLE_SET:add(collectibleType)
            end
            collectibleType = collectibleType + 1
        end
    end
end
function ____exports.getCollectibleSet(self)
    if COLLECTIBLE_SET.size == 0 then
        initCollectibleSet(nil)
    end
    return copySet(nil, COLLECTIBLE_SET)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.disableInputs"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local isActionPressed, isActionTriggered, getActionValue, getReturnValue, v
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MOVEMENT_ACTIONS = ____constants.MOVEMENT_ACTIONS
local SHOOTING_ACTIONS = ____constants.SHOOTING_ACTIONS
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function isActionPressed(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, true)
end
function isActionTriggered(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, true)
end
function getActionValue(self, _entity, _inputHook, buttonAction)
    return getReturnValue(nil, buttonAction, false)
end
function getReturnValue(self, buttonAction, booleanCallback)
    local disableValue = ((booleanCallback and (function() return false end)) or (function() return 0 end))()
    if not v.run.enableSomeInputs then
        return disableValue
    end
    if (v.run.whitelist ~= nil) and (not v.run.whitelist:has(buttonAction)) then
        return disableValue
    end
    if (v.run.blacklist ~= nil) and v.run.blacklist:has(buttonAction) then
        return disableValue
    end
    return nil
end
local FEATURE_NAME = "input disabler"
local initialized = false
v = {run = {enableSomeInputs = true, whitelist = nil, blacklist = nil}}
function ____exports.disableInputsInit(self, mod)
    initialized = true
    saveDataManager(nil, "disableInputs", v)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionPressed, InputHook.IS_ACTION_PRESSED)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionTriggered, InputHook.IS_ACTION_TRIGGERED)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, getActionValue, InputHook.GET_ACTION_VALUE)
end
function ____exports.enableAllInputs(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = nil
    v.run.blacklist = nil
end
function ____exports.disableAllInputs(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = false
    v.run.whitelist = nil
    v.run.blacklist = nil
end
function ____exports.enableAllInputsExceptFor(self, blacklist)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = nil
    v.run.blacklist = blacklist
end
function ____exports.disableAllInputsExceptFor(self, whitelist)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.enableSomeInputs = true
    v.run.whitelist = whitelist
    v.run.blacklist = nil
end
function ____exports.disableMovementInputs(self)
    ____exports.enableAllInputsExceptFor(nil, MOVEMENT_ACTIONS)
end
function ____exports.disableShootingInputs(self)
    ____exports.enableAllInputsExceptFor(nil, SHOOTING_ACTIONS)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.forgottenSwitch"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local isActionTriggered, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function isActionTriggered(self, _entity, _inputHook, buttonAction)
    if (buttonAction == ButtonAction.ACTION_DROP) and v.run.shouldSwitch then
        v.run.shouldSwitch = false
        return true
    end
    return nil
end
local FEATURE_NAME = "forgotten switcher"
local initialized = false
v = {run = {shouldSwitch = false}}
function ____exports.forgottenSwitchInit(self, mod)
    initialized = true
    saveDataManager(nil, "forgottenSwitch", v)
    mod:AddCallback(ModCallbacks.MC_INPUT_ACTION, isActionTriggered, InputHook.IS_ACTION_TRIGGERED)
end
function ____exports.forgottenSwitch(self)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    v.run.shouldSwitch = true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.getCollectibleItemPoolType"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postPickupInitCollectible, preGetCollectible, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayEmpty = ____array.arrayEmpty
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomItemPoolType = ____rooms.getRoomItemPoolType
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function postPickupInitCollectible(self, pickup)
    local itemPoolType = __TS__ArrayShift(v.run.collectibleQueue)
    if itemPoolType == nil then
        return
    end
    local ptrHash = GetPtrHash(pickup)
    v.run.collectibleItemPoolTypeMap:set(ptrHash, itemPoolType)
end
function preGetCollectible(self, itemPoolType, _decrease, _seed)
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        arrayEmpty(nil, v.run.collectibleQueue)
        v.run.collectibleItemPoolTypeMap:clear()
    end
    __TS__ArrayPush(v.run.collectibleQueue, itemPoolType)
end
local FEATURE_NAME = "get collectible item pool type"
local initialized = false
v = {
    run = {
        collectibleQueue = {},
        collectibleItemPoolTypeMap = __TS__New(Map),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.getCollectibleItemPoolTypeInit(self, mod)
    initialized = true
    saveDataManager(nil, "getCollectibleItemPoolType", v)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_INIT, postPickupInitCollectible, PickupVariant.PICKUP_COLLECTIBLE)
    mod:AddCallback(ModCallbacks.MC_PRE_GET_COLLECTIBLE, preGetCollectible)
end
function ____exports.getCollectibleItemPoolType(self, collectible)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    if (collectible.Type ~= EntityType.ENTITY_PICKUP) or (collectible.Variant ~= PickupVariant.PICKUP_COLLECTIBLE) then
        error(
            (((("The \"getCollectibleItemPoolType()\" function was given a non-collectible: " .. tostring(collectible.Type)) .. ".") .. tostring(collectible.Variant)) .. ".") .. tostring(collectible.SubType)
        )
    end
    local ptrHash = GetPtrHash(collectible)
    local itemPoolType = v.run.collectibleItemPoolTypeMap:get(ptrHash)
    return ((itemPoolType == nil) and getRoomItemPoolType(nil)) or itemPoolType
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.runInNFrames"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postUpdate, FEATURE_NAME, initialized, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function postUpdate(self)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local functionsToFire = {}
    local indexesToRemove = {}
    do
        local i = 0
        while i < #v.run.queuedFunctionTuples do
            local functionTuple = v.run.queuedFunctionTuples[i + 1]
            local frame, func = table.unpack(functionTuple)
            if gameFrameCount >= frame then
                __TS__ArrayPush(functionsToFire, func)
                __TS__ArrayPush(indexesToRemove, i)
            end
            i = i + 1
        end
    end
    for ____, indexToRemove in ipairs(indexesToRemove) do
        __TS__ArraySplice(v.run.queuedFunctionTuples, indexToRemove, 1)
    end
    for ____, func in ipairs(functionsToFire) do
        func(nil)
    end
end
function ____exports.runInNFrames(self, func, frames)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local functionFireFrame = gameFrameCount + frames
    local tuple = {functionFireFrame, func}
    __TS__ArrayPush(v.run.queuedFunctionTuples, tuple)
end
FEATURE_NAME = "run in N frames"
initialized = false
v = {dontSave = true, run = {queuedFunctionTuples = {}}}
function ____exports.runInNFramesInit(self, mod)
    initialized = true
    saveDataManager(nil, "runInNFrames", v)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
end
function ____exports.runNextFrame(self, func)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    ____exports.runInNFrames(nil, func, 1)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.features.sirenHelpers"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local postNPCInitSirenHelper, checkReturnFamiliarToPlayer, blacklistEntryExists, v
local ____errors = require("lua_modules.isaacscript-common.dist.errors")
local getUpgradeErrorMsg = ____errors.getUpgradeErrorMsg
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
function postNPCInitSirenHelper(self, npc)
    checkReturnFamiliarToPlayer(nil, npc)
end
function checkReturnFamiliarToPlayer(self, npc)
    if npc.Target == nil then
        return
    end
    local familiar = npc.Target:ToFamiliar()
    if familiar == nil then
        return
    end
    if blacklistEntryExists(nil, familiar.Variant, familiar.SubType) then
        npc:Remove()
        familiar:AddToFollowers()
    end
end
function blacklistEntryExists(self, incomingFamiliarVariant, incomingFamiliarSubType)
    for ____, ____value in ipairs(v.run.familiarBlacklist) do
        local familiarVariant
        familiarVariant = ____value[1]
        local familiarSubType
        familiarSubType = ____value[2]
        if (incomingFamiliarVariant == familiarVariant) and (familiarSubType == incomingFamiliarSubType) then
            return true
        end
        if (incomingFamiliarVariant == familiarVariant) and (familiarSubType == nil) then
            return true
        end
    end
    return false
end
local FEATURE_NAME = "siren helpers"
local initialized = false
v = {run = {familiarBlacklist = {}}}
function ____exports.sirenHelpersInit(self, mod)
    initialized = true
    saveDataManager(nil, "sirenHelpers", v)
    mod:AddCallback(ModCallbacks.MC_POST_NPC_INIT, postNPCInitSirenHelper, EntityType.ENTITY_SIREN_HELPER)
end
function ____exports.setFamiliarNoSirenSteal(self, familiarVariant, familiarSubType)
    if not initialized then
        local msg = getUpgradeErrorMsg(nil, FEATURE_NAME)
        error(msg)
    end
    if blacklistEntryExists(nil, familiarVariant, familiarSubType) then
        return
    end
    __TS__ArrayPush(v.run.familiarBlacklist, {familiarVariant, familiarSubType})
end
local function getSirenHelper(self, familiar)
    local familiarHash = GetPtrHash(familiar)
    local sirenHelpers = Isaac.FindByType(EntityType.ENTITY_SIREN_HELPER)
    for ____, sirenHelper in ipairs(sirenHelpers) do
        if (sirenHelper.Target ~= nil) and (GetPtrHash(sirenHelper.Target) == familiarHash) then
            return sirenHelper
        end
    end
    return nil
end
function ____exports.hasSirenStolenFamiliar(self, familiar)
    return getSirenHelper(nil, familiar) ~= nil
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.card"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____random = require("lua_modules.isaacscript-common.dist.functions.random")
local getRandomInt = ____random.getRandomInt
local nextSeed = ____random.nextSeed
function ____exports.isCard(self, card)
    return ____exports.isNotCardOrRune(nil, card) and (not ____exports.isRune(nil, card))
end
function ____exports.isNotCardOrRune(self, card)
    return ((card == Card.CARD_DICE_SHARD) or (card == Card.CARD_EMERGENCY_CONTACT)) or (card == Card.CARD_CRACKED_KEY)
end
function ____exports.isRune(self, card)
    return (((card >= Card.RUNE_HAGALAZ) and (card <= Card.RUNE_BLACK)) or (card == Card.RUNE_SHARD)) or ((card >= Card.CARD_SOUL_ISAAC) and (card <= Card.CARD_SOUL_JACOB))
end
function ____exports.getRandomCard(self, seed)
    if seed == nil then
        seed = Random()
    end
    local card
    repeat
        do
            seed = nextSeed(nil, seed)
            card = getRandomInt(nil, 1, Card.NUM_CARDS - 1)
        end
    until ____exports.isCard(nil, card)
    return card
end
function ____exports.getRandomRune(self, seed)
    if seed == nil then
        seed = Random()
    end
    local card
    repeat
        do
            seed = nextSeed(nil, seed)
            card = getRandomInt(nil, 1, Card.NUM_CARDS - 1)
        end
    until not ((not ____exports.isRune(nil, card)) or (card == Card.RUNE_SHARD))
    return card
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.charge"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local getNumChargesToAdd, getNumChargesWithAAAModifier, shouldPlayFullRechargeSound
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local getCollectibleMaxCharges = ____collectibles.getCollectibleMaxCharges
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayers = ____player.getPlayers
local getTotalCharge = ____player.getTotalCharge
function ____exports.addRoomClearCharge(self, player, ignoreBigRoomDoubleCharge)
    if ignoreBigRoomDoubleCharge == nil then
        ignoreBigRoomDoubleCharge = false
    end
    for ____, activeSlot in ipairs({ActiveSlot.SLOT_PRIMARY, ActiveSlot.SLOT_SECONDARY, ActiveSlot.SLOT_POCKET}) do
        ____exports.addRoomClearChargeToSlot(nil, player, activeSlot, ignoreBigRoomDoubleCharge)
    end
end
function ____exports.addRoomClearChargeToSlot(self, player, activeSlot, ignoreBigRoomDoubleCharge)
    if ignoreBigRoomDoubleCharge == nil then
        ignoreBigRoomDoubleCharge = false
    end
    if not player:NeedsCharge(activeSlot) then
        return
    end
    local game = Game()
    local hud = game:GetHUD()
    local totalCharge = getTotalCharge(nil, player, activeSlot)
    local chargesToAdd = getNumChargesToAdd(nil, player, activeSlot, ignoreBigRoomDoubleCharge)
    local modifiedChargesToAdd = getNumChargesWithAAAModifier(nil, player, activeSlot, chargesToAdd)
    local newCharge = totalCharge + modifiedChargesToAdd
    player:SetActiveCharge(newCharge, activeSlot)
    hud:FlashChargeBar(player, activeSlot)
    ____exports.playChargeSoundEffect(nil, player, activeSlot)
end
function getNumChargesToAdd(self, player, activeSlot, ignoreBigRoomDoubleCharge)
    if ignoreBigRoomDoubleCharge == nil then
        ignoreBigRoomDoubleCharge = false
    end
    local game = Game()
    local room = game:GetRoom()
    local roomShape = room:GetRoomShape()
    local activeItem = player:GetActiveItem(activeSlot)
    local activeCharge = player:GetActiveCharge(activeSlot)
    local batteryCharge = player:GetBatteryCharge(activeSlot)
    local hasBattery = player:HasCollectible(CollectibleType.COLLECTIBLE_BATTERY)
    local maxCharges = getCollectibleMaxCharges(nil, activeItem)
    if (not hasBattery) and (activeCharge == maxCharges) then
        return 0
    end
    if hasBattery and (batteryCharge == maxCharges) then
        return 0
    end
    if (not hasBattery) and ((activeCharge + 1) == maxCharges) then
        return 1
    end
    if hasBattery and ((batteryCharge + 1) == maxCharges) then
        return 1
    end
    if (roomShape >= RoomShape.ROOMSHAPE_2x2) and (not ignoreBigRoomDoubleCharge) then
        return 2
    end
    return 1
end
function getNumChargesWithAAAModifier(self, player, activeSlot, chargesToAdd)
    local activeItem = player:GetActiveItem(activeSlot)
    local activeCharge = player:GetActiveCharge(activeSlot)
    local batteryCharge = player:GetBatteryCharge(activeSlot)
    local hasBattery = player:HasCollectible(CollectibleType.COLLECTIBLE_BATTERY)
    local hasAAABattery = player:HasTrinket(TrinketType.TRINKET_AAA_BATTERY)
    local maxCharges = getCollectibleMaxCharges(nil, activeItem)
    if not hasAAABattery then
        return chargesToAdd
    end
    if (not hasBattery) and ((activeCharge + chargesToAdd) == (maxCharges - 1)) then
        return maxCharges + 1
    end
    if hasBattery and ((batteryCharge + chargesToAdd) == (maxCharges - 1)) then
        return maxCharges + 1
    end
    return chargesToAdd
end
function ____exports.playChargeSoundEffect(self, player, activeSlot)
    local sfx = SFXManager()
    for ____, soundEffect in ipairs({SoundEffect.SOUND_BATTERYCHARGE, SoundEffect.SOUND_BEEP}) do
        sfx:Stop(soundEffect)
    end
    local chargeSoundEffect = (shouldPlayFullRechargeSound(nil, player, activeSlot) and SoundEffect.SOUND_BATTERYCHARGE) or SoundEffect.SOUND_BEEP
    sfx:Play(chargeSoundEffect)
end
function shouldPlayFullRechargeSound(self, player, activeSlot)
    local activeItem = player:GetActiveItem(activeSlot)
    local activeCharge = player:GetActiveCharge(activeSlot)
    local batteryCharge = player:GetBatteryCharge(activeSlot)
    local hasBattery = player:HasCollectible(CollectibleType.COLLECTIBLE_BATTERY)
    local maxCharges = getCollectibleMaxCharges(nil, activeItem)
    if not hasBattery then
        return not player:NeedsCharge(activeSlot)
    end
    return (not player:NeedsCharge(activeSlot)) or ((activeCharge == maxCharges) and (batteryCharge == 0))
end
function ____exports.addRoomClearCharges(self, ignoreBigRoomDoubleCharge)
    if ignoreBigRoomDoubleCharge == nil then
        ignoreBigRoomDoubleCharge = false
    end
    for ____, player in ipairs(
        getPlayers(nil)
    ) do
        ____exports.addRoomClearCharge(nil, player, ignoreBigRoomDoubleCharge)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.color"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getDefaultColor(self)
    return Color(1, 1, 1)
end
function ____exports.getDefaultKColor(self)
    return KColor(1, 1, 1, 1)
end
function ____exports.copyColor(self, color)
    return Color(color.R, color.G, color.B, color.A, color.RO, color.GO, color.BO)
end
function ____exports.copyKColor(self, kColor)
    return KColor(kColor.Red, kColor.Green, kColor.Blue, kColor.Alpha)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.deepCopyTests"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local copiedObjectIsTable, copiedObjectHasKeyAndValueString, copiedTableHasKeyAndValueNumber, copiedTableDoesNotCoerceTypes, copiedObjectHasNoReferencesForPrimitivesForward, copiedObjectHasNoReferencesForPrimitivesBackward, copiedObjectHasNoReferencesForArray, copiedObjectHasChildObject, copiedMapIsMap, copiedMapHasValue, copiedSetIsSet, copiedSetHasValue, copiedMapHasChildMap
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayEquals = ____array.arrayEquals
local ____deepCopy = require("lua_modules.isaacscript-common.dist.functions.deepCopy")
local deepCopy = ____deepCopy.deepCopy
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local log = ____log.log
function copiedObjectIsTable(self)
    local oldObject = {abc = "def"}
    local newObject = deepCopy(nil, oldObject)
    local newObjectType = type(newObject)
    if newObjectType ~= "table" then
        error("The copied object is not a table.")
    end
end
function copiedObjectHasKeyAndValueString(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldObject = {abc = valueToLookFor}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    local value = newObject[keyToLookFor]
    if value == nil then
        error("The copied object did not have a key of: " .. keyToLookFor)
    end
    local valueType = type(value)
    if valueType ~= "string" then
        error("The copied object had a value type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error("The copied object had a value of: " .. value)
    end
end
function copiedTableHasKeyAndValueNumber(self)
    local keyToLookFor = 123
    local valueToLookFor = 456
    local oldTable = {}
    oldTable[keyToLookFor] = valueToLookFor
    local newObject = deepCopy(nil, oldTable)
    local newTable = newObject
    local value = newTable[keyToLookFor]
    if value == nil then
        error(
            "The copied object did not have a key of: " .. tostring(keyToLookFor)
        )
    end
    local valueType = type(value)
    if valueType ~= "number" then
        error("The copied object had a value type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error(
            "The copied object had a value of: " .. tostring(value)
        )
    end
end
function copiedTableDoesNotCoerceTypes(self)
    local keyToLookFor = 123
    local valueToLookFor = 456
    local oldTable = {}
    oldTable[keyToLookFor] = valueToLookFor
    local newObject = deepCopy(nil, oldTable)
    local newTable = newObject
    local keyString = tostring(keyToLookFor)
    local valueString = tostring(valueToLookFor)
    local valueFromString = newTable[keyString]
    if valueFromString ~= nil then
        error("The copied object had a string key of: " .. keyString)
    end
    local value = newTable[keyToLookFor]
    if value == valueString then
        error("The copied object had a value that incorrectly matched the string of: " .. valueString)
    end
end
function copiedObjectHasNoReferencesForPrimitivesForward(self)
    local originalStringValue = "abcdef"
    local originalNumberValue = 123
    local oldObject = {abc = originalStringValue, def = originalNumberValue}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    oldObject.abc = "newValue"
    if oldObject.abc == newObject.abc then
        error("The copied object has a string reference going forward.")
    end
    oldObject.def = 456
    if oldObject.def == newObject.def then
        error("The copied object has a number reference going forward.")
    end
end
function copiedObjectHasNoReferencesForPrimitivesBackward(self)
    local originalStringValue = "abcdef"
    local originalNumberValue = 123
    local oldObject = {abc = originalStringValue, def = originalNumberValue}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    newObject.abc = "newValue"
    if newObject.abc == oldObject.abc then
        error("The copied object has a string reference going backward.")
    end
    newObject.def = 456
    if newObject.def == oldObject.def then
        error("The copied object has a number reference going backward.")
    end
end
function copiedObjectHasNoReferencesForArray(self)
    local oldObject = {abc = {1, 2, 3}}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    if oldObject.abc == newObject.abc then
        error("The copied object has the same point to the child array.")
    end
    if not arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object does not have an equal array.")
    end
    local ____obj, ____index = oldObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] + 1
    if arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object has an equal array after a modification to the old array.")
    end
    local ____obj, ____index = oldObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] - 1
    local ____obj, ____index = newObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] + 1
    if arrayEquals(nil, oldObject.abc, newObject.abc) then
        error("The copied object has an equal array after a modification to the new array.")
    end
    local ____obj, ____index = newObject.abc, 0 + 1
    ____obj[____index] = ____obj[____index] - 1
end
function copiedObjectHasChildObject(self)
    local childObjectIndex = "abc"
    local keyToLookFor = "def"
    local valueToLookFor = "ghi"
    local oldObject = {abc = {def = valueToLookFor}}
    local newTable = deepCopy(nil, oldObject)
    local newObject = newTable
    local childObject = newObject[childObjectIndex]
    if childObject == nil then
        error("Failed to find the child object at index: " .. childObjectIndex)
    end
    local childObjectType = type(childObject)
    if childObjectType ~= "table" then
        error("The copied child object was not a table.")
    end
    local value = childObject[keyToLookFor]
    if value == nil then
        error("The child object did not have a key of: " .. keyToLookFor)
    end
    local valueType = type(value)
    if valueType ~= "string" then
        error("The child object value had a type of: " .. valueType)
    end
    if value ~= valueToLookFor then
        error("The child object value was: " .. valueToLookFor)
    end
end
function copiedMapIsMap(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, valueToLookFor)
    local newObject = deepCopy(nil, oldMap)
    local newMap = newObject
    local newMapType = type(newMap)
    if newMapType ~= "table" then
        error("The copied Map was not a table.")
    end
    if not __TS__InstanceOf(newMap, Map) then
        error("The copied Map was not a Map.")
    end
end
function copiedMapHasValue(self)
    local keyToLookFor = "abc"
    local valueToLookFor = "def"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, valueToLookFor)
    local newTable = deepCopy(nil, oldMap)
    local newMap = newTable
    local value = newMap:get(keyToLookFor)
    if value == nil then
        error("The copied Map did not have a key of: " .. keyToLookFor)
    end
    if value ~= valueToLookFor then
        error("The copied Map did not have a value of: " .. valueToLookFor)
    end
end
function copiedSetIsSet(self)
    local valueToLookFor = "abc"
    local oldSet = __TS__New(Set)
    oldSet:add(valueToLookFor)
    local newTable = deepCopy(nil, oldSet)
    local newSet = newTable
    local newSetType = type(newSet)
    if newSetType ~= "table" then
        error("The copied Set was not a table.")
    end
    if not __TS__InstanceOf(newSet, Set) then
        error("The copied Set was not a Map.")
    end
end
function copiedSetHasValue(self)
    local valueToLookFor = "abc"
    local oldSet = __TS__New(Set)
    oldSet:add(valueToLookFor)
    local newTable = deepCopy(nil, oldSet)
    local newSet = newTable
    local hasValue = newSet:has(valueToLookFor)
    if not hasValue then
        error("The copied Set did not have a value of: " .. valueToLookFor)
    end
end
function copiedMapHasChildMap(self)
    local childMapKey = 123
    local childMapValue = 456
    local oldChildMap = __TS__New(Map)
    oldChildMap:set(childMapKey, childMapValue)
    local keyToLookFor = "abc"
    local oldMap = __TS__New(Map)
    oldMap:set(keyToLookFor, oldChildMap)
    local newTable = deepCopy(nil, oldMap)
    local newMap = newTable
    local newChildMap = newMap:get(keyToLookFor)
    if newChildMap == nil then
        error("The copied Map did not have a child map at key: " .. keyToLookFor)
    end
    local newChildMapType = type(newChildMap)
    if newChildMapType ~= "table" then
        error("The copied child Map had a type of: " .. newChildMapType)
    end
    if not __TS__InstanceOf(newChildMap, Map) then
        error("The copied child Map was not a Map.")
    end
    local value = newChildMap:get(childMapKey)
    if value == nil then
        error(
            "The copied child Map did not have a key of: " .. tostring(childMapKey)
        )
    end
    if value ~= childMapValue then
        error(
            "The copied child Map did not have a value of: " .. tostring(childMapValue)
        )
    end
end
function ____exports.deepCopyTests(self)
    copiedObjectIsTable(nil)
    copiedObjectHasKeyAndValueString(nil)
    copiedTableHasKeyAndValueNumber(nil)
    copiedTableDoesNotCoerceTypes(nil)
    copiedObjectHasNoReferencesForPrimitivesForward(nil)
    copiedObjectHasNoReferencesForPrimitivesBackward(nil)
    copiedObjectHasNoReferencesForArray(nil)
    copiedObjectHasChildObject(nil)
    copiedMapIsMap(nil)
    copiedMapHasValue(nil)
    copiedSetIsSet(nil)
    copiedSetHasValue(nil)
    copiedMapHasChildMap(nil)
    log("All tests passed!")
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.input"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MAX_NUM_INPUTS = ____constants.MAX_NUM_INPUTS
local MOVEMENT_ACTIONS = ____constants.MOVEMENT_ACTIONS
local SHOOTING_ACTIONS = ____constants.SHOOTING_ACTIONS
local ControllerLiteral = ControllerLiteral or ({})
ControllerLiteral.DPAD_LEFT = 0
ControllerLiteral[ControllerLiteral.DPAD_LEFT] = "DPAD_LEFT"
ControllerLiteral.DPAD_RIGHT = 1
ControllerLiteral[ControllerLiteral.DPAD_RIGHT] = "DPAD_RIGHT"
ControllerLiteral.DPAD_UP = 2
ControllerLiteral[ControllerLiteral.DPAD_UP] = "DPAD_UP"
ControllerLiteral.DPAD_DOWN = 3
ControllerLiteral[ControllerLiteral.DPAD_DOWN] = "DPAD_DOWN"
ControllerLiteral.BUTTON_A = 4
ControllerLiteral[ControllerLiteral.BUTTON_A] = "BUTTON_A"
ControllerLiteral.BUTTON_B = 5
ControllerLiteral[ControllerLiteral.BUTTON_B] = "BUTTON_B"
ControllerLiteral.BUTTON_X = 6
ControllerLiteral[ControllerLiteral.BUTTON_X] = "BUTTON_X"
ControllerLiteral.BUTTON_Y = 7
ControllerLiteral[ControllerLiteral.BUTTON_Y] = "BUTTON_Y"
ControllerLiteral.BUMPER_LEFT = 8
ControllerLiteral[ControllerLiteral.BUMPER_LEFT] = "BUMPER_LEFT"
ControllerLiteral.TRIGGER_LEFT = 9
ControllerLiteral[ControllerLiteral.TRIGGER_LEFT] = "TRIGGER_LEFT"
ControllerLiteral.STICK_LEFT = 10
ControllerLiteral[ControllerLiteral.STICK_LEFT] = "STICK_LEFT"
ControllerLiteral.BUMPER_RIGHT = 11
ControllerLiteral[ControllerLiteral.BUMPER_RIGHT] = "BUMPER_RIGHT"
ControllerLiteral.TRIGGER_RIGHT = 12
ControllerLiteral[ControllerLiteral.TRIGGER_RIGHT] = "TRIGGER_RIGHT"
ControllerLiteral.STICK_RIGHT = 13
ControllerLiteral[ControllerLiteral.STICK_RIGHT] = "STICK_RIGHT"
ControllerLiteral.BUTTON_BACK = 14
ControllerLiteral[ControllerLiteral.BUTTON_BACK] = "BUTTON_BACK"
ControllerLiteral.BUTTON_START = 15
ControllerLiteral[ControllerLiteral.BUTTON_START] = "BUTTON_START"
function ____exports.controllerToString(self, controller)
    for ____, ____value in ipairs(
        __TS__ObjectEntries(ControllerLiteral)
    ) do
        local key
        key = ____value[1]
        local controllerLiteralCode
        controllerLiteralCode = ____value[2]
        do
            if type(key) ~= "string" then
                goto __continue3
            end
            local controllerCode = controllerLiteralCode
            if controllerCode ~= controller then
                goto __continue3
            end
            local controllerName = key
            for ____, prefix in ipairs({"DPAD_", "BUTTON_", "BUMPER_", "TRIGGER_", "STICK_"}) do
                controllerName = __TS__StringReplace(controllerName, prefix, "")
            end
            return controllerName
        end
        ::__continue3::
    end
    return "unknown"
end
function ____exports.isActionPressedOnAnyInput(self, buttonAction)
    do
        local i = 0
        while i < MAX_NUM_INPUTS do
            if Input.IsActionPressed(buttonAction, i) then
                return true
            end
            i = i + 1
        end
    end
    return false
end
function ____exports.isActionTriggeredOnAnyInput(self, buttonAction)
    do
        local i = 0
        while i < MAX_NUM_INPUTS do
            if Input.IsActionTriggered(buttonAction, i) then
                return true
            end
            i = i + 1
        end
    end
    return false
end
function ____exports.isKeyboardPressed(self, key)
    return Input.IsButtonPressed(key, 0)
end
function ____exports.isMoveActionPressedOnAnyInput(self)
    for ____, buttonAction in __TS__Iterator(
        MOVEMENT_ACTIONS:values()
    ) do
        if ____exports.isActionPressedOnAnyInput(nil, buttonAction) then
            return true
        end
    end
    return false
end
function ____exports.isMoveActionTriggeredOnAnyInput(self)
    for ____, buttonAction in __TS__Iterator(
        MOVEMENT_ACTIONS:values()
    ) do
        if ____exports.isActionTriggeredOnAnyInput(nil, buttonAction) then
            return true
        end
    end
    return false
end
function ____exports.isShootActionPressedOnAnyInput(self)
    for ____, buttonAction in __TS__Iterator(
        SHOOTING_ACTIONS:values()
    ) do
        if ____exports.isActionPressedOnAnyInput(nil, buttonAction) then
            return true
        end
    end
    return false
end
function ____exports.isShootActionTriggeredOnAnyInput(self)
    for ____, buttonAction in __TS__Iterator(
        SHOOTING_ACTIONS:values()
    ) do
        if ____exports.isActionTriggeredOnAnyInput(nil, buttonAction) then
            return true
        end
    end
    return false
end
function ____exports.keyboardToString(self, keyboard)
    for keyName, keyCode in pairs(Keyboard) do
        if keyCode == keyboard then
            local withoutPrefix = __TS__StringSlice(keyName, #"KEY_")
            local withoutUnderscores = string.gsub(withoutPrefix, "_", " ")
            return withoutUnderscores
        end
    end
    return "unknown"
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.language"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local LANGUAGE_NAMES = {en = "English", jp = "Japanese", kr = "Korean", zh = "Chinese (Simple)", ru = "Russian", de = "German", es = "Spanish"}
function ____exports.getLanguageName(self)
    local languageAbbreviation = Options.Language
    return LANGUAGE_NAMES[languageAbbreviation]
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.math"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local getCircleInitialPosition
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
function getCircleInitialPosition(self, direction, radius)
    repeat
        local ____switch6 = direction
        local ____cond6 = ____switch6 == Direction.NO_DIRECTION
        if ____cond6 then
            do
                return Vector.Zero
            end
        end
        ____cond6 = ____cond6 or (____switch6 == Direction.LEFT)
        if ____cond6 then
            do
                return Vector(-radius, 0)
            end
        end
        ____cond6 = ____cond6 or (____switch6 == Direction.UP)
        if ____cond6 then
            do
                return Vector(0, -radius)
            end
        end
        ____cond6 = ____cond6 or (____switch6 == Direction.RIGHT)
        if ____cond6 then
            do
                return Vector(radius, 0)
            end
        end
        ____cond6 = ____cond6 or (____switch6 == Direction.DOWN)
        if ____cond6 then
            do
                return Vector(0, radius)
            end
        end
        do
            do
                ensureAllCases(nil, direction)
                return Vector.Zero
            end
        end
    until true
end
function ____exports.getAngleDifference(self, angle1, angle2)
    local subtractedAngle = angle1 - angle2
    return ((subtractedAngle + 180) % 360) - 180
end
function ____exports.getCircleDiscretizedPoints(self, centerPos, radius, numPoints, xMultiplier, yMultiplier, initialDirection)
    if xMultiplier == nil then
        xMultiplier = 1
    end
    if yMultiplier == nil then
        yMultiplier = 1
    end
    if initialDirection == nil then
        initialDirection = Direction.UP
    end
    local initialPosition = getCircleInitialPosition(nil, initialDirection, radius)
    local positions = {}
    do
        local i = 0
        while i < numPoints do
            local rotatedPosition = initialPosition:Rotated((i * 360) / numPoints)
            rotatedPosition.X = rotatedPosition.X * xMultiplier
            rotatedPosition.Y = rotatedPosition.Y * yMultiplier
            local positionFromCenter = centerPos + rotatedPosition
            __TS__ArrayPush(positions, positionFromCenter)
            i = i + 1
        end
    end
    return positions
end
function ____exports.isEven(self, num)
    return (num & 1) == 0
end
function ____exports.isOdd(self, num)
    return (num & 1) == 1
end
function ____exports.lerp(self, a, b, pos)
    return a + ((b - a) * pos)
end
function ____exports.lerpAngleDegrees(self, aStart, aEnd, percent)
    return aStart + (____exports.getAngleDifference(nil, aStart, aEnd) * percent)
end
function ____exports.round(self, num, numDecimalPlaces)
    if numDecimalPlaces == nil then
        numDecimalPlaces = 0
    end
    local roundedNum = tonumber(
        string.format(
            ("%." .. tostring(numDecimalPlaces)) .. "f",
            num
        )
    )
    return ((roundedNum == nil) and 0) or roundedNum
end
function ____exports.tanh(self, x)
    return (math.exp(x) - math.exp(-x)) / (math.exp(x) + math.exp(-x))
end
function ____exports.sign(self, n)
    if n > 0 then
        return 1
    end
    if n < 0 then
        return -1
    end
    return 0
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.pickups"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local getRandomArrayElement = ____array.getRandomArrayElement
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local getEnumValues = ____util.getEnumValues
function ____exports.getRandomHeartSubType(self, seed)
    if seed == nil then
        seed = Random()
    end
    local heartSubTypes = getEnumValues(nil, HeartSubType)
    return getRandomArrayElement(nil, heartSubTypes, seed)
end
local CHEST_PICKUP_VARIANTS = __TS__New(Set, {PickupVariant.PICKUP_CHEST, PickupVariant.PICKUP_BOMBCHEST, PickupVariant.PICKUP_SPIKEDCHEST, PickupVariant.PICKUP_ETERNALCHEST, PickupVariant.PICKUP_MIMICCHEST, PickupVariant.PICKUP_OLDCHEST, PickupVariant.PICKUP_WOODENCHEST, PickupVariant.PICKUP_MEGACHEST, PickupVariant.PICKUP_HAUNTEDCHEST, PickupVariant.PICKUP_LOCKEDCHEST, PickupVariant.PICKUP_REDCHEST, PickupVariant.PICKUP_MOMSCHEST})
function ____exports.isChest(self, pickup)
    return CHEST_PICKUP_VARIANTS:has(pickup.Variant)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.playerHealth"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local MAX_PLAYER_HEART_CONTAINERS = ____constants.MAX_PLAYER_HEART_CONTAINERS
function ____exports.removeAllPlayerHealth(self, player)
    local goldenHearts = player:GetGoldenHearts()
    local eternalHearts = player:GetEternalHearts()
    local boneHearts = player:GetBoneHearts()
    local brokenHearts = player:GetBrokenHearts()
    player:AddGoldenHearts(goldenHearts * -1)
    player:AddEternalHearts(eternalHearts * -1)
    player:AddBoneHearts(boneHearts * -1)
    player:AddBrokenHearts(brokenHearts * -1)
    player:AddMaxHearts(MAX_PLAYER_HEART_CONTAINERS * -2, true)
    player:AddSoulHearts(MAX_PLAYER_HEART_CONTAINERS * -2)
end
function ____exports.getPlayerHealth(self, player)
    local character = player:GetPlayerType()
    local soulHeartTypes = {}
    local maxHearts = player:GetMaxHearts()
    local hearts = player:GetHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    local goldenHearts = player:GetGoldenHearts()
    local eternalHearts = player:GetEternalHearts()
    local rottenHearts = player:GetRottenHearts()
    local brokenHearts = player:GetBrokenHearts()
    local subPlayer = player:GetSubPlayer()
    if (character == PlayerType.PLAYER_THEFORGOTTEN) and (subPlayer ~= nil) then
        maxHearts = boneHearts * 2
        boneHearts = 0
        soulHearts = subPlayer:GetSoulHearts()
    elseif (character == PlayerType.PLAYER_THESOUL) and (subPlayer ~= nil) then
        maxHearts = subPlayer:GetBoneHearts() * 2
        hearts = subPlayer:GetHearts()
    end
    hearts = hearts - (rottenHearts * 2)
    local extraHearts = math.ceil(soulHearts / 2) + boneHearts
    local currentSoulHeart = 0
    do
        local i = 0
        while i < extraHearts do
            local isBoneHeart = player:IsBoneHeart(i)
            if (character == PlayerType.PLAYER_THEFORGOTTEN) and (subPlayer ~= nil) then
                isBoneHeart = subPlayer:IsBoneHeart(i)
            end
            if isBoneHeart then
                __TS__ArrayPush(soulHeartTypes, HeartSubType.HEART_BONE)
            else
                local isBlackHeart = player:IsBlackHeart(currentSoulHeart + 1)
                if (character == PlayerType.PLAYER_THEFORGOTTEN) and (subPlayer ~= nil) then
                    isBlackHeart = subPlayer:IsBlackHeart(currentSoulHeart + 1)
                end
                if isBlackHeart then
                    __TS__ArrayPush(soulHeartTypes, HeartSubType.HEART_BLACK)
                else
                    __TS__ArrayPush(soulHeartTypes, HeartSubType.HEART_SOUL)
                end
                currentSoulHeart = currentSoulHeart + 2
            end
            i = i + 1
        end
    end
    return {soulHeartTypes = soulHeartTypes, maxHearts = maxHearts, hearts = hearts, eternalHearts = eternalHearts, soulHearts = soulHearts, boneHearts = boneHearts, goldenHearts = goldenHearts, rottenHearts = rottenHearts, brokenHearts = brokenHearts}
end
function ____exports.setPlayerHealth(self, player, playerHealth)
    local character = player:GetPlayerType()
    local subPlayer = player:GetSubPlayer()
    ____exports.removeAllPlayerHealth(nil, player)
    if (character == PlayerType.PLAYER_THESOUL) and (subPlayer ~= nil) then
        subPlayer:AddMaxHearts(playerHealth.maxHearts, false)
    else
        player:AddMaxHearts(playerHealth.maxHearts, false)
    end
    player:AddEternalHearts(playerHealth.eternalHearts)
    local soulHeartsRemaining = playerHealth.soulHearts
    do
        local i = 1
        while i <= #playerHealth.soulHeartTypes do
            local heartType = playerHealth.soulHeartTypes[i]
            local isHalf = (playerHealth.soulHearts + (playerHealth.boneHearts * 2)) < (i * 2)
            local addAmount = 2
            if (isHalf or (heartType == HeartSubType.HEART_BONE)) or (soulHeartsRemaining < 2) then
                addAmount = 1
            end
            if heartType == HeartSubType.HEART_SOUL then
                player:AddSoulHearts(addAmount)
                soulHeartsRemaining = soulHeartsRemaining - addAmount
            elseif heartType == HeartSubType.HEART_BLACK then
                player:AddBlackHearts(addAmount)
                soulHeartsRemaining = soulHeartsRemaining - addAmount
            elseif heartType == HeartSubType.HEART_BONE then
                player:AddBoneHearts(addAmount)
            end
            i = i + 1
        end
    end
    player:AddRottenHearts(playerHealth.rottenHearts)
    player:AddHearts(playerHealth.hearts)
    player:AddGoldenHearts(playerHealth.goldenHearts)
    player:AddBrokenHearts(playerHealth.brokenHearts)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.pocketItems"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____cardNameMap = require("lua_modules.isaacscript-common.dist.cardNameMap")
local CARD_NAME_MAP = ____cardNameMap.CARD_NAME_MAP
local ____pillEffectNameMap = require("lua_modules.isaacscript-common.dist.pillEffectNameMap")
local PILL_EFFECT_NAME_MAP = ____pillEffectNameMap.PILL_EFFECT_NAME_MAP
function ____exports.getCardName(self, card)
    local itemConfig = Isaac.GetItemConfig()
    local defaultName = "Unknown"
    if type(card) ~= "number" then
        return defaultName
    end
    local cardName = CARD_NAME_MAP:get(card)
    if cardName ~= nil then
        return cardName
    end
    local itemConfigCard = itemConfig:GetCard(card)
    if itemConfigCard == nil then
        return defaultName
    end
    return itemConfigCard.Name
end
function ____exports.getPillEffectName(self, pillEffect)
    local itemConfig = Isaac.GetItemConfig()
    local defaultName = "Unknown"
    if type(pillEffect) ~= "number" then
        return defaultName
    end
    local pillEffectName = PILL_EFFECT_NAME_MAP:get(pillEffect)
    if pillEffectName ~= nil then
        return pillEffectName
    end
    local itemConfigPillEffect = itemConfig:GetPillEffect(pillEffect)
    if itemConfigPillEffect == nil then
        return defaultName
    end
    return itemConfigPillEffect.Name
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.pillEffectNameMap"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.PILL_EFFECT_NAME_MAP = __TS__New(Map, {{PillEffect.PILLEFFECT_BAD_GAS, "Bad Gas"}, {PillEffect.PILLEFFECT_BAD_TRIP, "Bad Trip"}, {PillEffect.PILLEFFECT_BALLS_OF_STEEL, "Balls of Steel"}, {PillEffect.PILLEFFECT_BOMBS_ARE_KEYS, "Bombs Are Key"}, {PillEffect.PILLEFFECT_EXPLOSIVE_DIARRHEA, "Explosive Diarrhea"}, {PillEffect.PILLEFFECT_FULL_HEALTH, "Full Health"}, {PillEffect.PILLEFFECT_HEALTH_DOWN, "Health Down"}, {PillEffect.PILLEFFECT_HEALTH_UP, "Health Up"}, {PillEffect.PILLEFFECT_I_FOUND_PILLS, "I Found Pills"}, {PillEffect.PILLEFFECT_PUBERTY, "Puberty"}, {PillEffect.PILLEFFECT_PRETTY_FLY, "Pretty Fly"}, {PillEffect.PILLEFFECT_RANGE_DOWN, "Range Down"}, {PillEffect.PILLEFFECT_RANGE_UP, "Range Up"}, {PillEffect.PILLEFFECT_SPEED_DOWN, "Speed Down"}, {PillEffect.PILLEFFECT_SPEED_UP, "Speed Up"}, {PillEffect.PILLEFFECT_TEARS_DOWN, "Tears Down"}, {PillEffect.PILLEFFECT_TEARS_UP, "Tears Up"}, {PillEffect.PILLEFFECT_LUCK_DOWN, "Luck Down"}, {PillEffect.PILLEFFECT_LUCK_UP, "Luck Up"}, {PillEffect.PILLEFFECT_TELEPILLS, "Telepills"}, {PillEffect.PILLEFFECT_48HOUR_ENERGY, "48 Hour Energy"}, {PillEffect.PILLEFFECT_HEMATEMESIS, "Hematemesis"}, {PillEffect.PILLEFFECT_PARALYSIS, "Paralysis"}, {PillEffect.PILLEFFECT_SEE_FOREVER, "I can see forever!"}, {PillEffect.PILLEFFECT_PHEROMONES, "Pheromones"}, {PillEffect.PILLEFFECT_AMNESIA, "Amnesia"}, {PillEffect.PILLEFFECT_LEMON_PARTY, "Lemon Party"}, {PillEffect.PILLEFFECT_WIZARD, "R U a Wizard?"}, {PillEffect.PILLEFFECT_PERCS, "Percs!"}, {PillEffect.PILLEFFECT_ADDICTED, "Addicted!"}, {PillEffect.PILLEFFECT_RELAX, "Re-Lax"}, {PillEffect.PILLEFFECT_QUESTIONMARK, "???"}, {PillEffect.PILLEFFECT_LARGER, "One makes you larger"}, {PillEffect.PILLEFFECT_SMALLER, "One makes you small"}, {PillEffect.PILLEFFECT_INFESTED_EXCLAMATION, "Infested!"}, {PillEffect.PILLEFFECT_INFESTED_QUESTION, "Infested?"}, {PillEffect.PILLEFFECT_POWER, "Power Pill!"}, {PillEffect.PILLEFFECT_RETRO_VISION, "Retro Vision"}, {PillEffect.PILLEFFECT_FRIENDS_TILL_THE_END, "Friends Till The End!"}, {PillEffect.PILLEFFECT_X_LAX, "X-Lax"}, {PillEffect.PILLEFFECT_SOMETHINGS_WRONG, "Something's wrong..."}, {PillEffect.PILLEFFECT_IM_DROWSY, "I'm Drowsy..."}, {PillEffect.PILLEFFECT_IM_EXCITED, "I'm Excited!!!"}, {PillEffect.PILLEFFECT_GULP, "Gulp!"}, {PillEffect.PILLEFFECT_HORF, "Horf!"}, {PillEffect.PILLEFFECT_SUNSHINE, "Feels like I'm walking on sunshine!"}, {PillEffect.PILLEFFECT_VURP, "Vurp!"}, {PillEffect.PILLEFFECT_SHOT_SPEED_DOWN, "Shot Speed Down"}, {PillEffect.PILLEFFECT_SHOT_SPEED_UP, "Shot Speed Up"}, {PillEffect.PILLEFFECT_EXPERIMENTAL, "Experimental Pill"}})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.position"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local DISTANCE_OF_GRID_TILE = ____constants.DISTANCE_OF_GRID_TILE
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local anyEntityCloserThan = ____entity.anyEntityCloserThan
local getEffects = ____entity.getEffects
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerCloserThan = ____player.getPlayerCloserThan
function ____exports.findFreePosition(self, startingPosition)
    local game = Game()
    local room = game:GetRoom()
    local heavenDoors = getEffects(nil, EffectVariant.HEAVEN_LIGHT_DOOR, 0)
    do
        local i = 0
        while i < 100 do
            do
                local position = room:FindFreePickupSpawnPosition(startingPosition, i)
                local closePlayer = getPlayerCloserThan(nil, position, DISTANCE_OF_GRID_TILE)
                if closePlayer ~= nil then
                    goto __continue3
                end
                local isCloseHeavenDoor = anyEntityCloserThan(nil, heavenDoors, position, DISTANCE_OF_GRID_TILE)
                if isCloseHeavenDoor then
                    goto __continue3
                end
                return position
            end
            ::__continue3::
            i = i + 1
        end
    end
    return room:FindFreePickupSpawnPosition(startingPosition)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.revive"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getDeathAnimationName = ____player.getDeathAnimationName
local ____sprite = require("lua_modules.isaacscript-common.dist.functions.sprite")
local getFinalFrameOfAnimation = ____sprite.getFinalFrameOfAnimation
local ____trinketGive = require("lua_modules.isaacscript-common.dist.functions.trinketGive")
local giveTrinketsBack = ____trinketGive.giveTrinketsBack
local temporarilyRemoveTrinkets = ____trinketGive.temporarilyRemoveTrinkets
function ____exports.willMysteriousPaperRevive(self, player)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local sprite = player:GetSprite()
    local animation = getDeathAnimationName(nil, player)
    local deathAnimationFrames = getFinalFrameOfAnimation(nil, sprite, animation)
    local frameOfDeath = (gameFrameCount + deathAnimationFrames) + 1
    return (frameOfDeath % 4) == 3
end
function ____exports.willPlayerRevive(self, player)
    local trinketSituation = temporarilyRemoveTrinkets(nil, player, TrinketType.TRINKET_MYSTERIOUS_PAPER)
    local willRevive = player:WillPlayerRevive() or ((trinketSituation ~= nil) and ____exports.willMysteriousPaperRevive(nil, player))
    giveTrinketsBack(nil, player, trinketSituation)
    return willRevive
end
function ____exports.willReviveFromSpiritShackles(self, player)
    if not player:HasCollectible(CollectibleType.COLLECTIBLE_SPIRIT_SHACKLES) then
        return false
    end
    local effects = player:GetEffects()
    local spiritShacklesEnabled = not effects:HasNullEffect(NullItemID.ID_SPIRIT_SHACKLES_DISABLED)
    local playerInSoulForm = effects:HasNullEffect(NullItemID.ID_SPIRIT_SHACKLES_SOUL)
    return spiritShacklesEnabled and (not playerInSoulForm)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.sprite"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getFinalFrameOfAnimation(self, sprite, animation)
    local currentAnimation = sprite:GetAnimation()
    local currentFrame = sprite:GetFrame()
    if (animation ~= nil) and (animation ~= currentAnimation) then
        sprite:SetAnimation(animation)
    end
    sprite:SetLastFrame()
    local finalFrame = sprite:GetFrame()
    if (animation ~= nil) and (animation ~= currentAnimation) then
        sprite:Play(currentAnimation, true)
    end
    sprite:SetFrame(currentFrame)
    return finalFrame
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.trinketGive"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local GOLDEN_TRINKET_SHIFT = ____constants.GOLDEN_TRINKET_SHIFT
function ____exports.temporarilyRemoveTrinkets(self, player, trinketType)
    if not player:HasTrinket(trinketType) then
        return nil
    end
    local trinket1 = player:GetTrinket(0)
    local trinket2 = player:GetTrinket(1)
    local numTrinkets = 0
    while player:HasTrinket(trinketType) do
        player:TryRemoveTrinket(trinketType)
        numTrinkets = numTrinkets + 1
    end
    local numSmeltedTrinkets = numTrinkets
    local trinketWasInSlot1 = (trinket1 == trinketType) or ((trinket1 + GOLDEN_TRINKET_SHIFT) == trinketType)
    if trinketWasInSlot1 then
        numSmeltedTrinkets = numSmeltedTrinkets - 1
    end
    local trinketWasInSlot2 = (trinket2 == trinketType) or ((trinket2 + GOLDEN_TRINKET_SHIFT) == trinketType)
    if trinketWasInSlot2 then
        numSmeltedTrinkets = numSmeltedTrinkets - 1
    end
    return {trinketTypeRemoved = trinketType, trinket1 = trinket1, trinket2 = trinket2, numSmeltedTrinkets = numSmeltedTrinkets}
end
function ____exports.giveTrinketsBack(self, player, trinketSituation)
    if trinketSituation == nil then
        return
    end
    local trinket1 = player:GetTrinket(0)
    local trinket2 = player:GetTrinket(1)
    if trinket1 ~= TrinketType.TRINKET_NULL then
        player:TryRemoveTrinket(trinket1)
    end
    if trinket2 ~= TrinketType.TRINKET_NULL then
        player:TryRemoveTrinket(trinket2)
    end
    do
        local i = 0
        while i < trinketSituation.numSmeltedTrinkets do
            player:AddTrinket(trinketSituation.trinketTypeRemoved, false)
            player:UseActiveItem(CollectibleType.COLLECTIBLE_SMELTER, UseFlag.USE_NOANIM)
            i = i + 1
        end
    end
    if trinketSituation.trinket1 ~= TrinketType.TRINKET_NULL then
        player:AddTrinket(trinketSituation.trinket1, false)
    end
    if trinketSituation.trinket2 ~= TrinketType.TRINKET_NULL then
        player:AddTrinket(trinketSituation.trinket2, false)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.stage"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.onRepentanceStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stageType = level:GetStageType()
    return (stageType == StageType.STAGETYPE_REPENTANCE) or (stageType == StageType.STAGETYPE_REPENTANCE_B)
end
function ____exports.getEffectiveStage(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    if ____exports.onRepentanceStage(nil) then
        return stage + 1
    end
    return stage
end
function ____exports.onCathedral(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 10) and (stageType == 1)
end
function ____exports.onChest(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 11) and (stageType == 1)
end
function ____exports.onDarkRoom(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 11) and (stageType == 0)
end
function ____exports.onFinalFloor(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    return (((stage == 11) or (stage == 12)) or (stage == 13)) or ((stage == 8) and ____exports.onRepentanceStage(nil))
end
function ____exports.onSheol(self)
    local game = Game()
    local level = game:GetLevel()
    local stage = level:GetStage()
    local stageType = level:GetStageType()
    return (stage == 10) and (stageType == 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.tears"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
function ____exports.getFireDelay(self, tearsStat)
    return math.max((30 / tearsStat) - 1, -0.9999)
end
function ____exports.getTearsStat(self, fireDelay)
    return 30 / (fireDelay + 1)
end
function ____exports.addTearsStat(self, player, tearsStat)
    local existingTearsStat = ____exports.getTearsStat(nil, player.MaxFireDelay)
    local newTearsStat = existingTearsStat + tearsStat
    local newMaxFireDelay = ____exports.getFireDelay(nil, newTearsStat)
    player.MaxFireDelay = newMaxFireDelay
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.transformations"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____transformationMap = require("lua_modules.isaacscript-common.dist.transformationMap")
local ITEM_TO_TRANSFORMATION_MAP = ____transformationMap.ITEM_TO_TRANSFORMATION_MAP
local TRANSFORMATIONS_NOT_BASED_ON_ITEMS = ____transformationMap.TRANSFORMATIONS_NOT_BASED_ON_ITEMS
local TRANSFORMATION_TO_ITEMS_MAP = ____transformationMap.TRANSFORMATION_TO_ITEMS_MAP
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local copySet = ____util.copySet
function ____exports.getPlayerNumTransformationCollectibles(self, player, playerForm)
    if TRANSFORMATIONS_NOT_BASED_ON_ITEMS:has(playerForm) then
        error(
            ("The transformation of " .. tostring(playerForm)) .. " cannot be tracked by this function."
        )
    end
    local itemsForTransformation = TRANSFORMATION_TO_ITEMS_MAP:get(playerForm)
    if itemsForTransformation == nil then
        error(
            ("The transformation of " .. tostring(playerForm)) .. " is not a valid value of the PlayerForm enum."
        )
    end
    local numCollectibles = 0
    for ____, collectibleType in __TS__Iterator(
        itemsForTransformation:values()
    ) do
        numCollectibles = numCollectibles + player:GetCollectibleNum(collectibleType)
    end
    return numCollectibles
end
function ____exports.getTransformationsForItem(self, collectibleType)
    local transformations = ITEM_TO_TRANSFORMATION_MAP:get(collectibleType)
    return ((transformations == nil) and __TS__New(Set)) or copySet(nil, transformations)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.transformationMap"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local initMaps
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local collectibleHasTag = ____collectibles.collectibleHasTag
local getMaxCollectibleID = ____collectibles.getMaxCollectibleID
function initMaps(self)
    for ____, playerForm in __TS__Iterator(
        ____exports.TRANSFORMATION_TO_TAG_MAP:keys()
    ) do
        ____exports.TRANSFORMATION_TO_ITEMS_MAP:set(
            playerForm,
            __TS__New(Set)
        )
    end
    do
        local collectibleType = 1
        while collectibleType <= getMaxCollectibleID(nil) do
            for ____, ____value in __TS__Iterator(
                ____exports.TRANSFORMATION_TO_TAG_MAP:entries()
            ) do
                local playerForm
                playerForm = ____value[1]
                local tag
                tag = ____value[2]
                do
                    if not collectibleHasTag(nil, collectibleType, tag) then
                        goto __continue5
                    end
                    local items = ____exports.TRANSFORMATION_TO_ITEMS_MAP:get(playerForm)
                    if items == nil then
                        error(
                            "Failed to get the items for transformation: " .. tostring(playerForm)
                        )
                    end
                    items:add(collectibleType)
                    local transformations = ____exports.ITEM_TO_TRANSFORMATION_MAP:get(collectibleType)
                    if transformations == nil then
                        transformations = __TS__New(Set)
                        ____exports.ITEM_TO_TRANSFORMATION_MAP:set(collectibleType, transformations)
                    end
                    transformations:add(playerForm)
                end
                ::__continue5::
            end
            collectibleType = collectibleType + 1
        end
    end
end
____exports.TRANSFORMATION_TO_TAG_MAP = __TS__New(Map, {{PlayerForm.PLAYERFORM_GUPPY, 32}, {PlayerForm.PLAYERFORM_LORD_OF_THE_FLIES, 64}, {PlayerForm.PLAYERFORM_MUSHROOM, 256}, {PlayerForm.PLAYERFORM_ANGEL, 1024}, {PlayerForm.PLAYERFORM_BOB, 128}, {PlayerForm.PLAYERFORM_DRUGS, 2}, {PlayerForm.PLAYERFORM_MOM, 4}, {PlayerForm.PLAYERFORM_BABY, 512}, {PlayerForm.PLAYERFORM_EVIL_ANGEL, 2048}, {PlayerForm.PLAYERFORM_POOP, 4096}, {PlayerForm.PLAYERFORM_BOOK_WORM, 8192}, {PlayerForm.PLAYERFORM_SPIDERBABY, 16384}})
____exports.TRANSFORMATIONS_NOT_BASED_ON_ITEMS = __TS__New(Set, {PlayerForm.PLAYERFORM_ADULTHOOD, PlayerForm.PLAYERFORM_STOMPY, PlayerForm.PLAYERFORM_FLIGHT})
____exports.TRANSFORMATION_TO_ITEMS_MAP = __TS__New(Map)
____exports.ITEM_TO_TRANSFORMATION_MAP = __TS__New(Map)
initMaps(nil)
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.trinkets"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local GOLDEN_TRINKET_SHIFT = ____constants.GOLDEN_TRINKET_SHIFT
local ____trinketNameMap = require("lua_modules.isaacscript-common.dist.trinketNameMap")
local TRINKET_NAME_MAP = ____trinketNameMap.TRINKET_NAME_MAP
function ____exports.getMaxTrinketID(self)
    local itemConfig = Isaac.GetItemConfig()
    return itemConfig:GetTrinkets().Size - 1
end
function ____exports.getTrinkets(self, matchingSubType)
    if matchingSubType == nil then
        matchingSubType = -1
    end
    local entities = Isaac.FindByType(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_TRINKET, matchingSubType)
    local collectibles = {}
    for ____, entity in ipairs(entities) do
        local pickup = entity:ToPickup()
        if pickup ~= nil then
            __TS__ArrayPush(collectibles, pickup)
        end
    end
    return collectibles
end
function ____exports.getTrinketName(self, trinketType)
    local itemConfig = Isaac.GetItemConfig()
    local defaultName = "Unknown"
    if type(trinketType) ~= "number" then
        return defaultName
    end
    local trinketName = TRINKET_NAME_MAP:get(trinketType)
    if trinketName ~= nil then
        return trinketName
    end
    local itemConfigItem = itemConfig:GetCollectible(trinketType)
    if itemConfigItem == nil then
        return defaultName
    end
    return itemConfigItem.Name
end
function ____exports.isGoldenTrinket(self, trinketType)
    return trinketType > GOLDEN_TRINKET_SHIFT
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.trinketNameMap"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
____exports.TRINKET_NAME_MAP = __TS__New(Map, {{1, "Swallowed Penny"}, {2, "Petrified Poop"}, {3, "AAA Battery"}, {4, "Broken Remote"}, {5, "Purple Heart"}, {6, "Broken Magnet"}, {7, "Rosary Bead"}, {8, "Cartridge"}, {9, "Pulse Worm"}, {10, "Wiggle Worm"}, {11, "Ring Worm"}, {12, "Flat Worm"}, {13, "Store Credit"}, {14, "Callus"}, {15, "Lucky Rock"}, {16, "Mom's Toenail"}, {17, "Black Lipstick"}, {18, "Bible Tract"}, {19, "Paper Clip"}, {20, "Monkey Paw"}, {21, "Mysterious Paper"}, {22, "Daemon's Tail"}, {23, "Missing Poster"}, {24, "Butt Penny"}, {25, "Mysterious Candy"}, {26, "Hook Worm"}, {27, "Whip Worm"}, {28, "Broken Ankh"}, {29, "Fish Head"}, {30, "Pinky Eye"}, {31, "Push Pin"}, {32, "Liberty Cap"}, {33, "Umbilical Cord"}, {34, "Child's Heart"}, {35, "Curved Horn"}, {36, "Rusted Key"}, {37, "Goat Hoof"}, {38, "Mom's Pearl"}, {39, "Cancer"}, {40, "Red Patch"}, {41, "Match Stick"}, {42, "Lucky Toe"}, {43, "Cursed Skull"}, {44, "Safety Cap"}, {45, "Ace of Spades"}, {46, "Isaac's Fork"}, {48, "A Missing Page"}, {49, "Bloody Penny"}, {50, "Burnt Penny"}, {51, "Flat Penny"}, {52, "Counterfeit Penny"}, {53, "Tick"}, {54, "Isaac's Head"}, {55, "Maggy's Faith"}, {56, "Judas' Tongue"}, {57, "???'s Soul"}, {58, "Samson's Lock"}, {59, "Cain's Eye"}, {60, "Eve's Bird Foot"}, {61, "The Left Hand"}, {62, "Shiny Rock"}, {63, "Safety Scissors"}, {64, "Rainbow Worm"}, {65, "Tape Worm"}, {66, "Lazy Worm"}, {67, "Cracked Dice"}, {68, "Super Magnet"}, {69, "Faded Polaroid"}, {70, "Louse"}, {71, "Bob's Bladder"}, {72, "Watch Battery"}, {73, "Blasting Cap"}, {74, "Stud Finder"}, {75, "Error"}, {76, "Poker Chip"}, {77, "Blister"}, {78, "Second Hand"}, {79, "Endless Nameless"}, {80, "Black Feather"}, {81, "Blind Rage"}, {82, "Golden Horse Shoe"}, {83, "Store Key"}, {84, "Rib of Greed"}, {85, "Karma"}, {86, "Lil Larva"}, {87, "Mom's Locket"}, {88, "NO!"}, {89, "Child Leash"}, {90, "Brown Cap"}, {91, "Meconium"}, {92, "Cracked Crown"}, {93, "Used Diaper"}, {94, "Fish Tail"}, {95, "Black Tooth"}, {96, "Ouroboros Worm"}, {97, "Tonsil"}, {98, "Nose Goblin"}, {99, "Super Ball"}, {100, "Vibrant Bulb"}, {101, "Dim Bulb"}, {102, "Fragmented Card"}, {103, "Equality!"}, {104, "Wish Bone"}, {105, "Bag Lunch"}, {106, "Lost Cork"}, {107, "Crow Heart"}, {108, "Walnut"}, {109, "Duct Tape"}, {110, "Silver Dollar"}, {111, "Bloody Crown"}, {112, "Pay To Win"}, {113, "Locust of War"}, {114, "Locust of Pestilence"}, {115, "Locust of Famine"}, {116, "Locust of Death"}, {117, "Locust of Conquest"}, {118, "Bat Wing"}, {119, "Stem Cell"}, {120, "Hairpin"}, {121, "Wooden Cross"}, {122, "Butter!"}, {123, "Filigree Feather"}, {124, "Door Stop"}, {125, "Extension Cord"}, {126, "Rotten Penny"}, {127, "Baby-Bender"}, {128, "Finger Bone"}, {129, "Jawbreaker"}, {130, "Chewed Pen"}, {131, "Blessed Penny"}, {132, "Broken Syringe"}, {133, "Short Fuse"}, {134, "Gigante Bean"}, {135, "A Lighter"}, {136, "Broken Padlock"}, {137, "Myosotis"}, {138, " 'M"}, {139, "Teardrop Charm"}, {140, "Apple of Sodom"}, {141, "Forgotten Lullaby"}, {142, "Beth's Faith"}, {143, "Old Capacitor"}, {144, "Brain Worm"}, {145, "Perfection"}, {146, "Devil's Crown"}, {147, "Charged Penny"}, {148, "Friendship Necklace"}, {149, "Panic Button"}, {150, "Blue Key"}, {151, "Flat File"}, {152, "Telescope Lens"}, {153, "Mom's Lock"}, {154, "Dice Bag"}, {155, "Holy Crown"}, {156, "Mother's Kiss"}, {157, "Torn Card"}, {158, "Torn Pocket"}, {159, "Gilded Key"}, {160, "Lucky Sack"}, {161, "Wicked Crown"}, {162, "Azazel's Stump"}, {163, "Dingle Berry"}, {164, "Ring Cap"}, {165, "Nuh Uh!"}, {166, "Modeling Clay"}, {167, "Polished Bone"}, {168, "Hollow Heart"}, {169, "Kid's Drawing"}, {170, "Crystal Key"}, {171, "Keeper's Bargain"}, {172, "Cursed Penny"}, {173, "Your Soul"}, {174, "Number Magnet"}, {175, "Strange Key"}, {176, "Lil Clot"}, {177, "Temporary Tattoo"}, {178, "Swallowed M80"}, {179, "RC Remote"}, {180, "Found Soul"}, {181, "Expansion Pack"}, {182, "Beth's Essence"}, {183, "The Twins"}, {184, "Adoption Papers"}, {185, "Cricket Leg"}, {186, "Apollyon's Best Friend"}, {187, "Broken Glasses"}, {188, "Ice Cube"}, {189, "Sigil of Baphomet"}})
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.trinketSet"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local ____trinkets = require("lua_modules.isaacscript-common.dist.functions.trinkets")
local getMaxTrinketID = ____trinkets.getMaxTrinketID
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local copySet = ____util.copySet
local TRINKET_SET = __TS__New(Set)
local function initTrinketSet(self)
    local itemConfig = Isaac.GetItemConfig()
    do
        local trinketType = 1
        while trinketType <= getMaxTrinketID(nil) do
            local itemConfigTrinket = itemConfig:GetTrinket(trinketType)
            if itemConfigTrinket ~= nil then
                TRINKET_SET:add(trinketType)
            end
            trinketType = trinketType + 1
        end
    end
end
function ____exports.getTrinketSet(self)
    if TRINKET_SET.size == 0 then
        initTrinketSet(nil)
    end
    return copySet(nil, TRINKET_SET)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.functions.ui"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local ____constants = require("lua_modules.isaacscript-common.dist.constants")
local UI_HEART_WIDTH = ____constants.UI_HEART_WIDTH
function ____exports.getScreenBottomRightPos(self)
    local screenWidth = Isaac.GetScreenWidth()
    local screenHeight = Isaac.GetScreenHeight()
    return Vector(screenWidth, screenHeight)
end
function ____exports.getHeartsUIWidth(self)
    local game = Game()
    local level = game:GetLevel()
    local curses = level:GetCurses()
    local player = Isaac.GetPlayer()
    local maxHearts = player:GetMaxHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    local extraLives = player:GetExtraLives()
    local combinedHearts = (maxHearts + soulHearts) + (boneHearts * 2)
    if combinedHearts > 12 then
        combinedHearts = 12
    end
    if curses == LevelCurse.CURSE_OF_THE_UNKNOWN then
        combinedHearts = 2
    end
    local width = (combinedHearts / 2) * UI_HEART_WIDTH
    if extraLives > 9 then
        width = width + 20
        if player:HasCollectible(CollectibleType.COLLECTIBLE_GUPPYS_COLLAR) then
            width = width + 6
        end
    elseif extraLives > 0 then
        width = width + 16
        if player:HasCollectible(CollectibleType.COLLECTIBLE_GUPPYS_COLLAR) then
            width = width + 4
        end
    end
    return width
end
function ____exports.getHUDOffsetVector(self)
    local defaultVector = Vector.Zero
    local hudOffset = math.floor(Options.HUDOffset * 10)
    if (hudOffset < 1) or (hudOffset > 10) then
        return defaultVector
    end
    local x = hudOffset * 2
    local y = hudOffset
    if y >= 4 then
        y = y + 1
    end
    if y >= 9 then
        y = y + 1
    end
    return Vector(x, y)
end
function ____exports.getScreenTopLeftPos(self)
    return Vector.Zero
end
function ____exports.getScreenTopRightPos(self)
    local bottomRight = ____exports.getScreenBottomRightPos(nil)
    return Vector(bottomRight.X, 0)
end
function ____exports.getScreenBottomLeftPos(self)
    local bottomRight = ____exports.getScreenBottomRightPos(nil)
    return Vector(0, bottomRight.Y)
end
function ____exports.getScreenCenterPos(self)
    local bottomRight = ____exports.getScreenBottomRightPos(nil)
    return bottomRight / 2
end
function ____exports.getVisibleHearts(self, player)
    local effectiveMaxHearts = player:GetEffectiveMaxHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    local maxHearts = math.max(effectiveMaxHearts, boneHearts * 2)
    local visibleHearts = math.ceil((maxHearts + soulHearts) / 2)
    if visibleHearts < 1 then
        visibleHearts = 1
    end
    return visibleHearts
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.ModCallbacksCustom"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.ModCallbacksCustom = ModCallbacksCustom or ({})
____exports.ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED = 0
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED] = "MC_POST_GAME_STARTED_REORDERED"
____exports.ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED = 1
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED] = "MC_POST_NEW_LEVEL_REORDERED"
____exports.ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED = 2
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED] = "MC_POST_NEW_ROOM_REORDERED"
____exports.ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED = 3
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED] = "MC_POST_PLAYER_INIT_REORDERED"
____exports.ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED = 4
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED] = "MC_POST_PLAYER_UPDATE_REORDERED"
____exports.ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED = 5
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED] = "MC_POST_PLAYER_RENDER_REORDERED"
____exports.ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE = 6
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE] = "MC_POST_PLAYER_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_TEAR_INIT_LATE = 7
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_TEAR_INIT_LATE] = "MC_POST_TEAR_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_FAMILIAR_INIT_LATE = 8
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_FAMILIAR_INIT_LATE] = "MC_POST_FAMILIAR_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_BOMB_INIT_LATE = 9
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_BOMB_INIT_LATE] = "MC_POST_BOMB_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE = 10
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE] = "MC_POST_PICKUP_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_LASER_INIT_LATE = 11
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_LASER_INIT_LATE] = "MC_POST_LASER_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_KNIFE_INIT_LATE = 12
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_KNIFE_INIT_LATE] = "MC_POST_KNIFE_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_PROJECTILE_INIT_LATE = 13
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PROJECTILE_INIT_LATE] = "MC_POST_PROJECTILE_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_NPC_INIT_LATE = 14
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_NPC_INIT_LATE] = "MC_POST_NPC_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_EFFECT_INIT_LATE = 15
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_EFFECT_INIT_LATE] = "MC_POST_EFFECT_INIT_LATE"
____exports.ModCallbacksCustom.MC_POST_PICKUP_COLLECT = 16
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PICKUP_COLLECT] = "MC_POST_PICKUP_COLLECT"
____exports.ModCallbacksCustom.MC_PRE_ITEM_PICKUP = 17
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_PRE_ITEM_PICKUP] = "MC_PRE_ITEM_PICKUP"
____exports.ModCallbacksCustom.MC_POST_ITEM_PICKUP = 18
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_ITEM_PICKUP] = "MC_POST_ITEM_PICKUP"
____exports.ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE = 19
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE] = "MC_POST_PLAYER_CHANGE_TYPE"
____exports.ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH = 20
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH] = "MC_POST_PLAYER_CHANGE_HEALTH"
____exports.ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE = 21
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE] = "MC_POST_PLAYER_FATAL_DAMAGE"
____exports.ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE = 22
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE] = "MC_PRE_CUSTOM_REVIVE"
____exports.ModCallbacksCustom.MC_POST_CUSTOM_REVIVE = 23
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_CUSTOM_REVIVE] = "MC_POST_CUSTOM_REVIVE"
____exports.ModCallbacksCustom.MC_POST_FLIP = 24
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_FLIP] = "MC_POST_FLIP"
____exports.ModCallbacksCustom.MC_POST_FIRST_FLIP = 25
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_FIRST_FLIP] = "MC_POST_FIRST_FLIP"
____exports.ModCallbacksCustom.MC_POST_ESAU_JR = 26
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_ESAU_JR] = "MC_POST_ESAU_JR"
____exports.ModCallbacksCustom.MC_POST_FIRST_ESAU_JR = 27
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_FIRST_ESAU_JR] = "MC_POST_FIRST_ESAU_JR"
____exports.ModCallbacksCustom.MC_POST_TRANSFORMATION = 28
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_TRANSFORMATION] = "MC_POST_TRANSFORMATION"
____exports.ModCallbacksCustom.MC_POST_PURCHASE = 29
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_PURCHASE] = "MC_POST_PURCHASE"
____exports.ModCallbacksCustom.MC_POST_SACRIFICE = 30
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_SACRIFICE] = "MC_POST_SACRIFICE"
____exports.ModCallbacksCustom.MC_POST_CURSED_TELEPORT = 31
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_CURSED_TELEPORT] = "MC_POST_CURSED_TELEPORT"
____exports.ModCallbacksCustom.MC_POST_SLOT_INIT = 32
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_SLOT_INIT] = "MC_POST_SLOT_INIT"
____exports.ModCallbacksCustom.MC_POST_SLOT_UPDATE = 33
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_SLOT_UPDATE] = "MC_POST_SLOT_UPDATE"
____exports.ModCallbacksCustom.MC_POST_SLOT_RENDER = 34
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_SLOT_RENDER] = "MC_POST_SLOT_RENDER"
____exports.ModCallbacksCustom.MC_POST_SLOT_DESTROYED = 35
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_SLOT_DESTROYED] = "MC_POST_SLOT_DESTROYED"
____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT = 36
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT] = "MC_POST_GRID_ENTITY_INIT"
____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE = 37
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE] = "MC_POST_GRID_ENTITY_UPDATE"
____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE = 38
____exports.ModCallbacksCustom[____exports.ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE] = "MC_POST_GRID_ENTITY_REMOVE"
return ____exports
 end,
["lua_modules.isaacscript-common.dist.types.ModUpgraded"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local getCallbackName
local postBombInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postBombInitLate")
local postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport")
local postCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive")
local postEffectInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEffectInitLate")
local postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr")
local postFamiliarInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFamiliarInitLate")
local postFirstEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr")
local postFirstFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip")
local postFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip")
local postGameStartedReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGameStartedReordered")
local postGridEntityInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit")
local postGridEntityRemove = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove")
local postGridEntityUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate")
local postItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup")
local postKnifeInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postKnifeInitLate")
local postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate")
local postNewLevelReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewLevelReordered")
local postNewRoomReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNewRoomReordered")
local postNPCInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNPCInitLate")
local postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect")
local postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate")
local postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth")
local postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType")
local postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage")
local postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate")
local postPlayerInitReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered")
local postPlayerRenderReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered")
local postPlayerUpdateReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered")
local postProjectileInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postProjectileInitLate")
local postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase")
local postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice")
local postSlotDestroyed = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotDestroyed")
local postSlotInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit")
local postSlotRender = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender")
local postSlotUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate")
local postTearInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTearInitLate")
local postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation")
local preCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive")
local preItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup")
local ____log = require("lua_modules.isaacscript-common.dist.functions.log")
local getDebugPrependString = ____log.getDebugPrependString
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
function getCallbackName(self, callbackID)
    for ____, ____value in ipairs(
        __TS__ObjectEntries(ModCallbacks)
    ) do
        local key
        key = ____value[1]
        local value
        value = ____value[2]
        if value == callbackID then
            return key
        end
    end
    return "MC_UNKNOWN"
end
____exports.ModUpgraded = __TS__Class()
local ModUpgraded = ____exports.ModUpgraded
ModUpgraded.name = "ModUpgraded"
function ModUpgraded.prototype.____constructor(self, mod, verbose)
    self.Mod = mod
    self.Verbose = verbose
    self.Name = mod.Name
end
function ModUpgraded.prototype.AddCallback(self, callbackID, ...)
    local args = {...}
    if self.Verbose then
        local callback = args[1]
        local optionalArg = args[2]
        local callbackName = getCallbackName(nil, callbackID)
        local debugMsg = getDebugPrependString(nil, callbackName)
        local function callbackWithLogger(____, ...)
            Isaac.DebugString(debugMsg .. " - START")
            local value = callback(nil, ...)
            Isaac.DebugString(
                (debugMsg .. " - END - ") .. tostring(value)
            )
            return value
        end
        self.Mod:AddCallback(callbackID, callbackWithLogger, optionalArg)
    else
        self.Mod:AddCallback(
            callbackID,
            __TS__Spread(args)
        )
    end
end
function ModUpgraded.prototype.HasData(self)
    return self.Mod:HasData()
end
function ModUpgraded.prototype.LoadData(self)
    return self.Mod:LoadData()
end
function ModUpgraded.prototype.RemoveCallback(self, callbackID, callback)
    self.Mod:RemoveCallback(callbackID, callback)
end
function ModUpgraded.prototype.RemoveData(self)
    self.Mod:RemoveData()
end
function ModUpgraded.prototype.SaveData(self, data)
    self.Mod:SaveData(data)
end
function ModUpgraded.prototype.AddCallbackCustom(self, callbackID, ...)
    local args = {...}
    repeat
        local ____switch13 = callbackID
        local ____cond13 = ____switch13 == ModCallbacksCustom.MC_POST_GAME_STARTED_REORDERED
        if ____cond13 then
            do
                postGameStartedReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_NEW_LEVEL_REORDERED)
        if ____cond13 then
            do
                postNewLevelReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_NEW_ROOM_REORDERED)
        if ____cond13 then
            do
                postNewRoomReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_INIT_REORDERED)
        if ____cond13 then
            do
                postPlayerInitReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED)
        if ____cond13 then
            do
                postPlayerUpdateReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_RENDER_REORDERED)
        if ____cond13 then
            do
                postPlayerRenderReordered:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_INIT_LATE)
        if ____cond13 then
            do
                postPlayerInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_TEAR_INIT_LATE)
        if ____cond13 then
            do
                postTearInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_FAMILIAR_INIT_LATE)
        if ____cond13 then
            do
                postFamiliarInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_BOMB_INIT_LATE)
        if ____cond13 then
            do
                postBombInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PICKUP_INIT_LATE)
        if ____cond13 then
            do
                postPickupInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_LASER_INIT_LATE)
        if ____cond13 then
            do
                postLaserInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_KNIFE_INIT_LATE)
        if ____cond13 then
            do
                postKnifeInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PROJECTILE_INIT_LATE)
        if ____cond13 then
            do
                postProjectileInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_NPC_INIT_LATE)
        if ____cond13 then
            do
                postNPCInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_EFFECT_INIT_LATE)
        if ____cond13 then
            do
                postEffectInitLate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PICKUP_COLLECT)
        if ____cond13 then
            do
                postPickupCollect:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_PRE_ITEM_PICKUP)
        if ____cond13 then
            do
                preItemPickup:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_ITEM_PICKUP)
        if ____cond13 then
            do
                postItemPickup:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_CHANGE_TYPE)
        if ____cond13 then
            do
                postPlayerChangeType:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_CHANGE_HEALTH)
        if ____cond13 then
            do
                postPlayerChangeHealth:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE)
        if ____cond13 then
            do
                postPlayerFatalDamage:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_PRE_CUSTOM_REVIVE)
        if ____cond13 then
            do
                preCustomRevive:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_CUSTOM_REVIVE)
        if ____cond13 then
            do
                postCustomRevive:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_FLIP)
        if ____cond13 then
            do
                postFlip:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_FIRST_FLIP)
        if ____cond13 then
            do
                postFirstFlip:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_ESAU_JR)
        if ____cond13 then
            do
                postEsauJr:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_FIRST_ESAU_JR)
        if ____cond13 then
            do
                postFirstEsauJr:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_TRANSFORMATION)
        if ____cond13 then
            do
                postTransformation:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_PURCHASE)
        if ____cond13 then
            do
                postPurchase:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_SACRIFICE)
        if ____cond13 then
            do
                postSacrifice:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_CURSED_TELEPORT)
        if ____cond13 then
            do
                postCursedTeleport:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_SLOT_INIT)
        if ____cond13 then
            do
                postSlotInit:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_SLOT_UPDATE)
        if ____cond13 then
            do
                postSlotUpdate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_SLOT_RENDER)
        if ____cond13 then
            do
                postSlotRender:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_SLOT_DESTROYED)
        if ____cond13 then
            do
                postSlotDestroyed:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_GRID_ENTITY_INIT)
        if ____cond13 then
            do
                postGridEntityInit:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_GRID_ENTITY_UPDATE)
        if ____cond13 then
            do
                postGridEntityUpdate:register(
                    table.unpack(args)
                )
                break
            end
        end
        ____cond13 = ____cond13 or (____switch13 == ModCallbacksCustom.MC_POST_GRID_ENTITY_REMOVE)
        if ____cond13 then
            do
                postGridEntityRemove:register(
                    table.unpack(args)
                )
                break
            end
        end
        do
            do
                ensureAllCases(nil, callbackID)
                error(
                    ("The custom callback ID of \"" .. tostring(callbackID)) .. "\" is not valid."
                )
            end
        end
    until true
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postBombInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, bombVariant)
    __TS__ArrayPush(subscriptions, {callback, bombVariant})
end
function ____exports.fire(self, bomb)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local bombVariant
        bombVariant = ____value[2]
        do
            if (bombVariant ~= nil) and (bombVariant ~= bomb.Variant) then
                goto __continue5
            end
            callback(nil, bomb)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, revivalType)
    __TS__ArrayPush(subscriptions, {callback, revivalType})
end
function ____exports.fire(self, player, revivalType)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackRevivalType
        callbackRevivalType = ____value[2]
        do
            if (callbackRevivalType ~= nil) and (callbackRevivalType ~= revivalType) then
                goto __continue5
            end
            callback(nil, player, revivalType)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEffectInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, effectVariant)
    __TS__ArrayPush(subscriptions, {callback, effectVariant})
end
function ____exports.fire(self, effect)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local effectVariant
        effectVariant = ____value[2]
        do
            if (effectVariant ~= nil) and (effectVariant ~= effect.Variant) then
                goto __continue5
            end
            callback(nil, effect)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFamiliarInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, familiarVariant)
    __TS__ArrayPush(subscriptions, {callback, familiarVariant})
end
function ____exports.fire(self, familiar)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local familiarVariant
        familiarVariant = ____value[2]
        do
            if (familiarVariant ~= nil) and (familiarVariant ~= familiar.Variant) then
                goto __continue5
            end
            callback(nil, familiar)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridEntity)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        do
            if (gridEntityType ~= nil) and (gridEntityType ~= gridEntity:GetType()) then
                goto __continue5
            end
            callback(nil, gridEntity)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridIndex, gridEntityType)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackGridEntityType
        callbackGridEntityType = ____value[2]
        do
            if (callbackGridEntityType ~= nil) and (callbackGridEntityType ~= gridEntityType) then
                goto __continue5
            end
            callback(nil, gridIndex, gridEntityType)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, gridEntityType)
    __TS__ArrayPush(subscriptions, {callback, gridEntityType})
end
function ____exports.fire(self, gridEntity)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        do
            if (gridEntityType ~= nil) and (gridEntityType ~= gridEntity:GetType()) then
                goto __continue5
            end
            callback(nil, gridEntity)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, itemType, itemID)
    __TS__ArrayPush(subscriptions, {callback, itemType, itemID})
end
function ____exports.fire(self, player, pickingUpItem)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local itemType
        itemType = ____value[2]
        local itemID
        itemID = ____value[3]
        do
            if (itemType ~= nil) and (itemType ~= pickingUpItem.type) then
                goto __continue5
            end
            if (itemID ~= nil) and (itemID ~= pickingUpItem.id) then
                goto __continue5
            end
            callback(nil, player, pickingUpItem)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postKnifeInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, knifeVariant)
    __TS__ArrayPush(subscriptions, {callback, knifeVariant})
end
function ____exports.fire(self, knife)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local knifeVariant
        knifeVariant = ____value[2]
        do
            if (knifeVariant ~= nil) and (knifeVariant ~= knife.Variant) then
                goto __continue5
            end
            callback(nil, knife)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, laserVariant)
    __TS__ArrayPush(subscriptions, {callback, laserVariant})
end
function ____exports.fire(self, laser)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local laserVariant
        laserVariant = ____value[2]
        do
            if (laserVariant ~= nil) and (laserVariant ~= laser.Variant) then
                goto __continue5
            end
            callback(nil, laser)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNPCInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, entityType)
    __TS__ArrayPush(subscriptions, {callback, entityType})
end
function ____exports.fire(self, npc)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local entityType
        entityType = ____value[2]
        do
            if (entityType ~= nil) and (entityType ~= npc.Type) then
                goto __continue5
            end
            callback(nil, npc)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant})
end
function ____exports.fire(self, pickup, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local pickupVariant
        pickupVariant = ____value[2]
        do
            if (pickupVariant ~= nil) and (pickupVariant ~= pickup.Variant) then
                goto __continue5
            end
            callback(nil, pickup, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant})
end
function ____exports.fire(self, pickup)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local pickupVariant
        pickupVariant = ____value[2]
        do
            if (pickupVariant ~= nil) and (pickupVariant ~= pickup.Variant) then
                goto __continue5
            end
            callback(nil, pickup)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player, healthType, amount)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player, healthType, amount)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            local shouldSustainDeath = callback(nil, player)
            if shouldSustainDeath ~= nil then
                return shouldSustainDeath
            end
        end
        ::__continue5::
    end
    return nil
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerVariant)
    __TS__ArrayPush(subscriptions, {callback, playerVariant})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local playerVariant
        playerVariant = ____value[2]
        do
            if (playerVariant ~= nil) and (playerVariant ~= player.Variant) then
                goto __continue5
            end
            callback(nil, player)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postProjectileInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, projectileVariant)
    __TS__ArrayPush(subscriptions, {callback, projectileVariant})
end
function ____exports.fire(self, projectile)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local projectileVariant
        projectileVariant = ____value[2]
        do
            if (projectileVariant ~= nil) and (projectileVariant ~= projectile.Variant) then
                goto __continue5
            end
            callback(nil, projectile)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, pickupVariant, pickupSubType)
    __TS__ArrayPush(subscriptions, {callback, pickupVariant, pickupSubType})
end
function ____exports.fire(self, player, pickupVariant, pickupSubType, pickupPrice)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player, pickupVariant, pickupSubType, pickupPrice)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player, numSacrifices)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        callback(nil, player, numSacrifices)
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotDestroyed"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, slotVariant)
    __TS__ArrayPush(subscriptions, {callback, slotVariant})
end
function ____exports.fire(self, slot)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local slotVariant
        slotVariant = ____value[2]
        do
            if (slotVariant ~= nil) and (slotVariant ~= slot.Variant) then
                goto __continue5
            end
            callback(nil, slot)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTearInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, tearVariant)
    __TS__ArrayPush(subscriptions, {callback, tearVariant})
end
function ____exports.fire(self, tear)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local tearVariant
        tearVariant = ____value[2]
        do
            if (tearVariant ~= nil) and (tearVariant ~= tear.Variant) then
                goto __continue5
            end
            callback(nil, tear)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, playerForm)
    __TS__ArrayPush(subscriptions, {callback, playerForm})
end
function ____exports.fire(self, player, playerForm, hasForm)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local callbackPlayerForm
        callbackPlayerForm = ____value[2]
        do
            if (callbackPlayerForm ~= nil) and (callbackPlayerForm ~= playerForm) then
                goto __continue5
            end
            callback(nil, player, playerForm, hasForm)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback)
    __TS__ArrayPush(subscriptions, {callback})
end
function ____exports.fire(self, player)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local revivalType = callback(nil, player)
        if revivalType ~= nil then
            return revivalType
        end
    end
    return nil
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local subscriptions = {}
function ____exports.hasSubscriptions(self)
    return #subscriptions > 0
end
function ____exports.register(self, callback, itemType, itemID)
    __TS__ArrayPush(subscriptions, {callback, itemType, itemID})
end
function ____exports.fire(self, player, pickingUpItem)
    for ____, ____value in ipairs(subscriptions) do
        local callback
        callback = ____value[1]
        local itemType
        itemType = ____value[2]
        local itemID
        itemID = ____value[3]
        do
            if (itemType ~= nil) and (itemType ~= pickingUpItem.type) then
                goto __continue5
            end
            if (itemID ~= nil) and (itemID ~= pickingUpItem.id) then
                goto __continue5
            end
            callback(nil, player, pickingUpItem)
        end
        ::__continue5::
    end
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.upgradeMod"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local initCustomCallbacks, initFeatures
local ____customRevive = require("lua_modules.isaacscript-common.dist.callbacks.customRevive")
local customReviveCallbacksInit = ____customRevive.customReviveCallbacksInit
local ____itemPickup = require("lua_modules.isaacscript-common.dist.callbacks.itemPickup")
local itemPickupCallbacksInit = ____itemPickup.itemPickupCallbacksInit
local ____postBombInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postBombInitLate")
local postBombInitLateCallbackInit = ____postBombInitLate.postBombInitLateCallbackInit
local ____postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.postCursedTeleport")
local postCursedTeleportCallbackInit = ____postCursedTeleport.postCursedTeleportCallbackInit
local ____postEffectInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postEffectInitLate")
local postEffectInitLateCallbackInit = ____postEffectInitLate.postEffectInitLateCallbackInit
local ____postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.postEsauJr")
local postEsauJrCallbacksInit = ____postEsauJr.postEsauJrCallbacksInit
local ____postFamiliarInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postFamiliarInitLate")
local postFamiliarInitLateCallbackInit = ____postFamiliarInitLate.postFamiliarInitLateCallbackInit
local ____postFlip = require("lua_modules.isaacscript-common.dist.callbacks.postFlip")
local postFlipCallbacksInit = ____postFlip.postFlipCallbacksInit
local ____postGridEntity = require("lua_modules.isaacscript-common.dist.callbacks.postGridEntity")
local postGridEntityCallbacksInit = ____postGridEntity.postGridEntityCallbacksInit
local ____postKnifeInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postKnifeInitLate")
local postKnifeInitLateCallbackInit = ____postKnifeInitLate.postKnifeInitLateCallbackInit
local ____postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postLaserInitLate")
local postLaserInitLateCallbackInit = ____postLaserInitLate.postLaserInitLateCallbackInit
local ____postNPCInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postNPCInitLate")
local postNPCInitLateCallbackInit = ____postNPCInitLate.postNPCInitLateCallbackInit
local ____postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.postPickupCollect")
local postPickupCollectCallbackInit = ____postPickupCollect.postPickupCollectCallbackInit
local ____postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postPickupInitLate")
local postPickupInitLateCallbackInit = ____postPickupInitLate.postPickupInitLateCallbackInit
local ____postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeHealth")
local postPlayerChangeHealthCallbackInit = ____postPlayerChangeHealth.postPlayerChangeHealthCallbackInit
local ____postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeType")
local postPlayerChangeTypeCallbackInit = ____postPlayerChangeType.postPlayerChangeTypeCallbackInit
local ____postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerFatalDamage")
local postPlayerFatalDamageCallbackInit = ____postPlayerFatalDamage.postPlayerFatalDamageCallbackInit
local ____postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerInitLate")
local postPlayerInitLateCallbackInit = ____postPlayerInitLate.postPlayerInitLateCallbackInit
local ____postPlayerReordered = require("lua_modules.isaacscript-common.dist.callbacks.postPlayerReordered")
local postPlayerReorderedCallbacksInit = ____postPlayerReordered.postPlayerReorderedCallbacksInit
local ____postProjectileInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postProjectileInitLate")
local postProjectileInitLateCallbackInit = ____postProjectileInitLate.postProjectileInitLateCallbackInit
local ____postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.postPurchase")
local postPurchaseCallbackInit = ____postPurchase.postPurchaseCallbackInit
local ____postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.postSacrifice")
local postSacrificeCallbackInit = ____postSacrifice.postSacrificeCallbackInit
local ____postSlotInitUpdate = require("lua_modules.isaacscript-common.dist.callbacks.postSlotInitUpdate")
local postSlotInitUpdateCallbacksInit = ____postSlotInitUpdate.postSlotInitUpdateCallbacksInit
local ____postSlotRenderBroken = require("lua_modules.isaacscript-common.dist.callbacks.postSlotRenderBroken")
local postSlotRenderBrokenCallbacksInit = ____postSlotRenderBroken.postSlotRenderBrokenCallbacksInit
local ____postTearInitLate = require("lua_modules.isaacscript-common.dist.callbacks.postTearInitLate")
local postTearInitLateCallbackInit = ____postTearInitLate.postTearInitLateCallbackInit
local ____postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.postTransformation")
local postTransformationCallbackInit = ____postTransformation.postTransformationCallbackInit
local ____reorderedCallbacks = require("lua_modules.isaacscript-common.dist.callbacks.reorderedCallbacks")
local reorderedCallbacksInit = ____reorderedCallbacks.reorderedCallbacksInit
local ____deployJSONRoom = require("lua_modules.isaacscript-common.dist.features.deployJSONRoom")
local deployJSONRoomInit = ____deployJSONRoom.deployJSONRoomInit
local ____disableInputs = require("lua_modules.isaacscript-common.dist.features.disableInputs")
local disableInputsInit = ____disableInputs.disableInputsInit
local ____forgottenSwitch = require("lua_modules.isaacscript-common.dist.features.forgottenSwitch")
local forgottenSwitchInit = ____forgottenSwitch.forgottenSwitchInit
local ____getCollectibleItemPoolType = require("lua_modules.isaacscript-common.dist.features.getCollectibleItemPoolType")
local getCollectibleItemPoolTypeInit = ____getCollectibleItemPoolType.getCollectibleItemPoolTypeInit
local ____preventCollectibleRotate = require("lua_modules.isaacscript-common.dist.features.preventCollectibleRotate")
local preventCollectibleRotateInit = ____preventCollectibleRotate.preventCollectibleRotateInit
local ____runInNFrames = require("lua_modules.isaacscript-common.dist.features.runInNFrames")
local runInNFramesInit = ____runInNFrames.runInNFramesInit
local ____main = require("lua_modules.isaacscript-common.dist.features.saveDataManager.main")
local saveDataManagerInit = ____main.saveDataManagerInit
local ____sirenHelpers = require("lua_modules.isaacscript-common.dist.features.sirenHelpers")
local sirenHelpersInit = ____sirenHelpers.sirenHelpersInit
local ____initialized = require("lua_modules.isaacscript-common.dist.initialized")
local areFeaturesInitialized = ____initialized.areFeaturesInitialized
local setFeaturesInitialized = ____initialized.setFeaturesInitialized
local ____ModUpgraded = require("lua_modules.isaacscript-common.dist.types.ModUpgraded")
local ModUpgraded = ____ModUpgraded.ModUpgraded
function initCustomCallbacks(self, mod)
    reorderedCallbacksInit(nil, mod)
    postPlayerReorderedCallbacksInit(nil, mod)
    postPlayerInitLateCallbackInit(nil, mod)
    postTearInitLateCallbackInit(nil, mod)
    postFamiliarInitLateCallbackInit(nil, mod)
    postBombInitLateCallbackInit(nil, mod)
    postPickupInitLateCallbackInit(nil, mod)
    postLaserInitLateCallbackInit(nil, mod)
    postKnifeInitLateCallbackInit(nil, mod)
    postProjectileInitLateCallbackInit(nil, mod)
    postNPCInitLateCallbackInit(nil, mod)
    postEffectInitLateCallbackInit(nil, mod)
    postPickupCollectCallbackInit(nil, mod)
    itemPickupCallbacksInit(nil, mod)
    postPlayerChangeTypeCallbackInit(nil, mod)
    postPlayerChangeHealthCallbackInit(nil, mod)
    postPlayerFatalDamageCallbackInit(nil, mod)
    customReviveCallbacksInit(nil, mod)
    postFlipCallbacksInit(nil, mod)
    postEsauJrCallbacksInit(nil, mod)
    postTransformationCallbackInit(nil, mod)
    postPurchaseCallbackInit(nil, mod)
    postSacrificeCallbackInit(nil, mod)
    postCursedTeleportCallbackInit(nil, mod)
    postSlotInitUpdateCallbacksInit(nil, mod)
    postSlotRenderBrokenCallbacksInit(nil, mod)
    postGridEntityCallbacksInit(nil, mod)
end
function initFeatures(self, mod)
    deployJSONRoomInit(nil, mod)
    disableInputsInit(nil, mod)
    forgottenSwitchInit(nil, mod)
    getCollectibleItemPoolTypeInit(nil, mod)
    preventCollectibleRotateInit(nil, mod)
    runInNFramesInit(nil, mod)
    sirenHelpersInit(nil, mod)
end
function ____exports.upgradeMod(self, mod, verbose)
    if verbose == nil then
        verbose = false
    end
    local modUpgraded = __TS__New(ModUpgraded, mod, verbose)
    if not areFeaturesInitialized(nil) then
        setFeaturesInitialized(nil)
        saveDataManagerInit(nil, modUpgraded)
        initCustomCallbacks(nil, modUpgraded)
        initFeatures(nil, modUpgraded)
    end
    return modUpgraded
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.customRevive"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, postRender, postNewRoom, postPlayerUpdateReordered, postPlayerFatalDamage, CustomReviveState, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____collectibles = require("lua_modules.isaacscript-common.dist.functions.collectibles")
local removeCollectibleFromItemTracker = ____collectibles.removeCollectibleFromItemTracker
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local removeAllMatchingEntities = ____entity.removeAllMatchingEntities
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
local postCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCustomRevive")
local preCustomRevive = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preCustomRevive")
function hasSubscriptions(self)
    return preCustomRevive:hasSubscriptions() or postCustomRevive:hasSubscriptions()
end
function postRender(self)
    if v.run.state ~= CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        return
    end
    local sfx = SFXManager()
    sfx:Stop(SoundEffect.SOUND_1UP)
end
function postNewRoom(self)
    if v.run.state == CustomReviveState.CHANGING_ROOMS then
        v.run.state = CustomReviveState.WAITING_FOR_ITEM_ANIMATION
    elseif v.run.state == CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        v.run.state = CustomReviveState.DISABLED
        v.run.revivalType = nil
        v.run.dyingPlayerIndex = nil
    end
end
function postPlayerUpdateReordered(self, player)
    if v.run.state ~= CustomReviveState.WAITING_FOR_ITEM_ANIMATION then
        return
    end
    if v.run.dyingPlayerIndex == nil then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    if playerIndex ~= v.run.dyingPlayerIndex then
        return
    end
    if not player:IsHoldingItem() then
        return
    end
    if v.run.revivalType ~= nil then
        postCustomRevive:fire(player, v.run.revivalType)
    end
    v.run.state = CustomReviveState.DISABLED
    v.run.revivalType = nil
    v.run.dyingPlayerIndex = nil
end
function postPlayerFatalDamage(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local revivalType = preCustomRevive:fire(player)
    if revivalType == nil then
        return
    end
    v.run.state = CustomReviveState.CHANGING_ROOMS
    v.run.revivalType = revivalType
    v.run.dyingPlayerIndex = getPlayerIndex(nil, player)
    player:AddCollectible(CollectibleType.COLLECTIBLE_1UP, 0, false)
    removeAllMatchingEntities(nil, EntityType.ENTITY_FAMILIAR, FamiliarVariant.ONE_UP)
    removeCollectibleFromItemTracker(nil, CollectibleType.COLLECTIBLE_1UP)
end
CustomReviveState = CustomReviveState or ({})
CustomReviveState.DISABLED = 0
CustomReviveState[CustomReviveState.DISABLED] = "DISABLED"
CustomReviveState.CHANGING_ROOMS = 1
CustomReviveState[CustomReviveState.CHANGING_ROOMS] = "CHANGING_ROOMS"
CustomReviveState.WAITING_FOR_ITEM_ANIMATION = 2
CustomReviveState[CustomReviveState.WAITING_FOR_ITEM_ANIMATION] = "WAITING_FOR_ITEM_ANIMATION"
v = {run = {state = CustomReviveState.DISABLED, revivalType = nil, dyingPlayerIndex = nil}}
function ____exports.customReviveCallbacksInit(self, mod)
    saveDataManager(nil, "customRevive", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, postRender)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReordered)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_FATAL_DAMAGE, postPlayerFatalDamage)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.itemPickup"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerUpdateReorderedPlayer, queueEmpty, queueNotEmpty, getPickingUpItemForPlayer, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
local postItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postItemPickup")
local preItemPickup = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.preItemPickup")
function hasSubscriptions(self)
    return preItemPickup:hasSubscriptions() or postItemPickup:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local pickingUpItem = getPickingUpItemForPlayer(nil, player)
    if player:IsItemQueueEmpty() then
        queueEmpty(nil, player, pickingUpItem)
    else
        queueNotEmpty(nil, player, pickingUpItem)
    end
end
function queueEmpty(self, player, pickingUpItem)
    if pickingUpItem.id ~= CollectibleType.COLLECTIBLE_NULL then
        postItemPickup:fire(player, pickingUpItem)
        pickingUpItem.id = CollectibleType.COLLECTIBLE_NULL
        pickingUpItem.type = ItemType.ITEM_NULL
    end
end
function queueNotEmpty(self, player, pickingUpItem)
    local queuedItem = player.QueuedItem.Item
    if (queuedItem ~= nil) and (queuedItem.ID ~= pickingUpItem.id) then
        pickingUpItem.id = queuedItem.ID
        pickingUpItem.type = queuedItem.Type
        preItemPickup:fire(player, pickingUpItem)
    end
end
function getPickingUpItemForPlayer(self, player)
    local index = getPlayerIndex(nil, player)
    local pickingUpItem = v.run.pickingUpItem:get(index)
    if pickingUpItem == nil then
        pickingUpItem = {id = CollectibleType.COLLECTIBLE_NULL, type = ItemType.ITEM_NULL}
        v.run.pickingUpItem:set(index, pickingUpItem)
    end
    return pickingUpItem
end
v = {
    run = {
        pickingUpItem = __TS__New(Map)
    }
}
function ____exports.itemPickupCallbacksInit(self, mod)
    saveDataManager(nil, "itemPickup", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postBombInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postBombUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postBombInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postBombInitLate")
function hasSubscriptions(self)
    return postBombInitLate:hasSubscriptions()
end
function postBombUpdate(self, bomb)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(bomb)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postBombInitLate:fire(bomb)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postBombInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postBombInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_BOMB_UPDATE, postBombUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postCursedTeleport"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, entityTakeDmgPlayer, setDamageFrame, isPotentialNaturalTeleportFromSacrificeRoom, incrementNumSacrifices, postPlayerRenderPlayer, playerIsTeleportingFromCursedTeleport, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local getPlayerNumAllHearts = ____player.getPlayerNumAllHearts
local postCursedTeleport = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postCursedTeleport")
function hasSubscriptions(self)
    return postCursedTeleport:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, _damageAmount, damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return
    end
    incrementNumSacrifices(nil, damageFlags)
    setDamageFrame(nil, tookDamage, damageFlags)
end
function setDamageFrame(self, tookDamage, damageFlags)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local player = tookDamage:ToPlayer()
    if player == nil then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    local trackingArray = v.run.damageFrameMap:get(playerIndex)
    if trackingArray ~= nil then
        local lastDamageFrame, callbackActivatedOnThisFrame = table.unpack(trackingArray)
        if (lastDamageFrame == gameFrameCount) and callbackActivatedOnThisFrame then
            return
        end
    end
    if isPotentialNaturalTeleportFromSacrificeRoom(nil, damageFlags) then
        return
    end
    v.run.damageFrameMap:set(playerIndex, {gameFrameCount, false})
end
function isPotentialNaturalTeleportFromSacrificeRoom(self, damageFlags)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    return ((roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage) and ((v.level.numSacrifices == 6) or (v.level.numSacrifices >= 12))
end
function incrementNumSacrifices(self, damageFlags)
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    if (roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage then
        local ____obj, ____index = v.level, "numSacrifices"
        ____obj[____index] = ____obj[____index] + 1
    end
end
function postPlayerRenderPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    local playerIndex = getPlayerIndex(nil, player)
    local trackingArray = v.run.damageFrameMap:get(playerIndex)
    if trackingArray == nil then
        return
    end
    local lastDamageFrame, callbackActivatedOnThisFrame = table.unpack(trackingArray)
    if not playerIsTeleportingFromCursedTeleport(nil, player, lastDamageFrame) then
        return
    end
    if callbackActivatedOnThisFrame then
        return
    end
    v.run.damageFrameMap:set(playerIndex, {gameFrameCount, true})
    postCursedTeleport:fire(player)
end
function playerIsTeleportingFromCursedTeleport(self, player, lastDamageFrame)
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if gameFrameCount ~= lastDamageFrame then
        return false
    end
    local sprite = player:GetSprite()
    if (not sprite:IsPlaying("TeleportUp")) or (sprite:GetFrame() ~= 1) then
        return false
    end
    if player:HasCollectible(CollectibleType.COLLECTIBLE_CURSED_EYE) then
        return true
    end
    local numHitsLeft = getPlayerNumAllHearts(nil, player)
    if player:HasTrinket(TrinketType.TRINKET_CURSED_SKULL) and (numHitsLeft == 1) then
        return true
    end
    return false
end
v = {
    run = {
        damageFrameMap = __TS__New(Map)
    },
    level = {numSacrifices = 0}
}
function ____exports.postCursedTeleportCallbackInit(self, mod)
    saveDataManager(nil, "postCursedTeleport", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_RENDER, postPlayerRenderPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postEffectInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postEffectUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postEffectInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEffectInitLate")
function hasSubscriptions(self)
    return postEffectInitLate:hasSubscriptions()
end
function postEffectUpdate(self, effect)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(effect)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postEffectInitLate:fire(effect)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postEffectInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postEffectInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_EFFECT_UPDATE, postEffectUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postEsauJr"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, postUpdate, getPlayerWithControllerIndex, useItemEsauJr, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayers = ____player.getPlayers
local postEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postEsauJr")
local postFirstEsauJr = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstEsauJr")
function hasSubscriptions(self)
    return postEsauJr:hasSubscriptions() or postFirstEsauJr:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    if (v.run.usedEsauJrFrame == nil) or (gameFrameCount < (v.run.usedEsauJrFrame + 1)) then
        return
    end
    v.run.usedEsauJrFrame = nil
    if v.run.usedEsauJrControllerIndex == nil then
        return
    end
    local player = getPlayerWithControllerIndex(nil, v.run.usedEsauJrControllerIndex)
    v.run.usedEsauJrControllerIndex = nil
    if player == nil then
        return
    end
    if not v.run.usedEsauJrAtLeastOnce then
        v.run.usedEsauJrAtLeastOnce = true
        postFirstEsauJr:fire(player)
    end
    postEsauJr:fire(player)
end
function getPlayerWithControllerIndex(self, controllerIndex)
    for ____, player in ipairs(
        getPlayers(nil)
    ) do
        if player.ControllerIndex == controllerIndex then
            return player
        end
    end
    return nil
end
function useItemEsauJr(self, _collectibleType, _rng, player, _useFlags, _activeSlot, _customVarData)
    if not hasSubscriptions(nil) then
        return
    end
    local game = Game()
    local gameFrameCount = game:GetFrameCount()
    v.run.usedEsauJrFrame = gameFrameCount + 1
    v.run.usedEsauJrControllerIndex = player.ControllerIndex
end
v = {run = {usedEsauJrFrame = nil, usedEsauJrControllerIndex = nil, usedEsauJrAtLeastOnce = false}}
function ____exports.postEsauJrCallbacksInit(self, mod)
    saveDataManager(nil, "postEsauJr", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemEsauJr, CollectibleType.COLLECTIBLE_ESAU_JR)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postFamiliarInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postFamiliarUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postFamiliarInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFamiliarInitLate")
function hasSubscriptions(self)
    return postFamiliarInitLate:hasSubscriptions()
end
function postFamiliarUpdate(self, familiar)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(familiar)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postFamiliarInitLate:fire(familiar)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postFamiliarInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postFamiliarInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_FAMILIAR_UPDATE, postFamiliarUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postFlip"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, useItemFlip, getNewLazarus, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayers = ____player.getPlayers
local isTaintedLazarus = ____player.isTaintedLazarus
local postFirstFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFirstFlip")
local postFlip = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postFlip")
function hasSubscriptions(self)
    return postFlip:hasSubscriptions() or postFirstFlip:hasSubscriptions()
end
function useItemFlip(self, _collectibleType, _rng, player, _useFlags, _activeSlot, _customVarData)
    if not hasSubscriptions(nil) then
        return
    end
    if not isTaintedLazarus(nil, player) then
        return
    end
    local newLazarus = getNewLazarus(nil, player)
    if not v.run.usedFlipAtLeastOnce then
        v.run.usedFlipAtLeastOnce = true
        postFirstFlip:fire(newLazarus)
    end
    postFlip:fire(newLazarus)
end
function getNewLazarus(self, oldLazarus)
    local oldCharacter = oldLazarus:GetPlayerType()
    local newCharacter
    if oldCharacter == PlayerType.PLAYER_LAZARUS_B then
        newCharacter = PlayerType.PLAYER_LAZARUS2_B
    elseif oldCharacter == PlayerType.PLAYER_LAZARUS2_B then
        newCharacter = PlayerType.PLAYER_LAZARUS_B
    else
        error("Failed to determine the character in the postFlip callback.")
    end
    for ____, player in ipairs(
        getPlayers(nil)
    ) do
        local character = player:GetPlayerType()
        if (character == newCharacter) and (player.FrameCount == oldLazarus.FrameCount) then
            return player
        end
    end
    error("Failed to find the player entity for the new Lazarus.")
    return oldLazarus
end
v = {run = {usedFlipAtLeastOnce = false}}
function ____exports.postFlipCallbacksInit(self, mod)
    saveDataManager(nil, "postFlip", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_USE_ITEM, useItemFlip, CollectibleType.COLLECTIBLE_FLIP)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postGridEntity"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postUpdate, checkGridEntityRemoved, postNewRoom, checkNewGridEntity, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____gridEntity = require("lua_modules.isaacscript-common.dist.functions.gridEntity")
local getGridEntities = ____gridEntity.getGridEntities
local postGridEntityInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityInit")
local postGridEntityRemove = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityRemove")
local postGridEntityUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postGridEntityUpdate")
function hasSubscriptions(self)
    return (postGridEntityInit:hasSubscriptions() or postGridEntityUpdate:hasSubscriptions()) or postGridEntityRemove:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, gridEntity in ipairs(
        getGridEntities(nil)
    ) do
        checkNewGridEntity(nil, gridEntity)
        postGridEntityUpdate:fire(gridEntity)
    end
    checkGridEntityRemoved(nil)
end
function checkGridEntityRemoved(self)
    local game = Game()
    local room = game:GetRoom()
    for ____, ____value in __TS__Iterator(
        v.room.initializedGridEntities:entries()
    ) do
        local gridIndex
        gridIndex = ____value[1]
        local gridEntityType
        gridEntityType = ____value[2]
        local gridEntity = room:GetGridEntity(gridIndex)
        if (gridEntity == nil) or (gridEntity:GetType() ~= gridEntityType) then
            v.room.initializedGridEntities:delete(gridIndex)
            postGridEntityRemove:fire(gridIndex, gridEntityType)
        end
    end
end
function postNewRoom(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, gridEntity in ipairs(
        getGridEntities(nil)
    ) do
        checkNewGridEntity(nil, gridEntity)
    end
end
function checkNewGridEntity(self, gridEntity)
    local gridIndex = gridEntity:GetGridIndex()
    local gridEntityType = gridEntity:GetType()
    local storedGridEntityType = v.room.initializedGridEntities:get(gridIndex)
    if storedGridEntityType ~= gridEntityType then
        v.room.initializedGridEntities:set(gridIndex, gridEntityType)
        postGridEntityInit:fire(gridEntity)
    end
end
v = {
    room = {
        initializedGridEntities = __TS__New(Map)
    }
}
function ____exports.postGridEntityCallbacksInit(self, mod)
    saveDataManager(nil, "postGridEntity", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postKnifeInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postKnifeUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postKnifeInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postKnifeInitLate")
function hasSubscriptions(self)
    return postKnifeInitLate:hasSubscriptions()
end
function postKnifeUpdate(self, knife)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(knife)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postKnifeInitLate:fire(knife)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postKnifeInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postKnifeInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_KNIFE_UPDATE, postKnifeUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postLaserInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postLaserUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postLaserInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postLaserInitLate")
function hasSubscriptions(self)
    return postLaserInitLate:hasSubscriptions()
end
function postLaserUpdate(self, laser)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(laser)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postLaserInitLate:fire(laser)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postLaserInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postLaserInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_LASER_UPDATE, postLaserUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postNPCInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postNPCUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postNPCInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postNPCInitLate")
function hasSubscriptions(self)
    return postNPCInitLate:hasSubscriptions()
end
function postNPCUpdate(self, npc)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(npc)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postNPCInitLate:fire(npc)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postNPCInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postNPCInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_NPC_UPDATE, postNPCUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPickupCollect"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPickupRender, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getClosestPlayer = ____player.getClosestPlayer
local postPickupCollect = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupCollect")
function hasSubscriptions(self)
    return postPickupCollect:hasSubscriptions()
end
function postPickupRender(self, pickup)
    if not hasSubscriptions(nil) then
        return
    end
    local sprite = pickup:GetSprite()
    local animation = sprite:GetAnimation()
    if animation ~= "Collect" then
        return
    end
    local index = GetPtrHash(pickup)
    if not v.room.firedSet:has(index) then
        v.room.firedSet:add(index)
        local player = getClosestPlayer(nil, pickup.Position)
        postPickupCollect:fire(pickup, player)
    end
end
v = {
    room = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.postPickupCollectCallbackInit(self, mod)
    saveDataManager(nil, "postPickupCollect", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_RENDER, postPickupRender)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPickupInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPickupUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postPickupInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPickupInitLate")
function hasSubscriptions(self)
    return postPickupInitLate:hasSubscriptions()
end
function postPickupUpdate(self, pickup)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(pickup)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postPickupInitLate:fire(pickup)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postPickupInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postPickupInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PICKUP_UPDATE, postPickupUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeHealth"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerUpdateReordered, getCurrentHealthValue, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____util = require("lua_modules.isaacscript-common.dist.functions.util")
local ensureAllCases = ____util.ensureAllCases
local getEnumValues = ____util.getEnumValues
local ____HealthType = require("lua_modules.isaacscript-common.dist.types.HealthType")
local HealthType = ____HealthType.HealthType
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
local postPlayerChangeHealth = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeHealth")
function hasSubscriptions(self)
    return postPlayerChangeHealth:hasSubscriptions()
end
function postPlayerUpdateReordered(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    local storedHealth = v.run.healthMap:get(playerIndex)
    if storedHealth == nil then
        storedHealth = __TS__New(Map)
    end
    local healthTypes = getEnumValues(nil, HealthType)
    for ____, healthType in ipairs(healthTypes) do
        local storedHealthValue = storedHealth:get(healthType)
        local currentHealthValue = getCurrentHealthValue(nil, player, healthType)
        if (storedHealthValue ~= nil) and (storedHealthValue ~= currentHealthValue) then
            local amount = currentHealthValue - storedHealthValue
            postPlayerChangeHealth:fire(player, healthType, amount)
        end
    end
end
function getCurrentHealthValue(self, player, healthType)
    repeat
        local ____switch10 = healthType
        local ____cond10 = ____switch10 == HealthType.RED
        if ____cond10 then
            do
                return player:GetHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.SOUL)
        if ____cond10 then
            do
                return player:GetSoulHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.ETERNAL)
        if ____cond10 then
            do
                return player:GetEternalHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.BLACK)
        if ____cond10 then
            do
                return player:GetBlackHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.GOLDEN)
        if ____cond10 then
            do
                return player:GetGoldenHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.BONE)
        if ____cond10 then
            do
                return player:GetBoneHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.ROTTEN)
        if ____cond10 then
            do
                return player:GetRottenHearts()
            end
        end
        ____cond10 = ____cond10 or (____switch10 == HealthType.MAX_HEARTS)
        if ____cond10 then
            do
                return player:GetMaxHearts()
            end
        end
        do
            do
                ensureAllCases(nil, healthType)
                return 0
            end
        end
    until true
end
v = {
    run = {
        healthMap = __TS__New(Map)
    }
}
function ____exports.postPlayerChangeHealthCallbackInit(self, mod)
    saveDataManager(nil, "postPlayerChangeHealth", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReordered)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerChangeType"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerUpdateReorderedPlayer, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
local postPlayerChangeType = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerChangeType")
function hasSubscriptions(self)
    return postPlayerChangeType:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local character = player:GetPlayerType()
    local playerIndex = getPlayerIndex(nil, player)
    local storedCharacter = v.run.characterMap:get(playerIndex)
    if storedCharacter == nil then
        v.run.characterMap:set(playerIndex, character)
        return
    end
    if character ~= storedCharacter then
        v.run.characterMap:set(playerIndex, character)
        postPlayerChangeType:fire(player)
    end
end
v = {
    run = {
        characterMap = __TS__New(Map)
    }
}
function ____exports.postPlayerChangeTypeCallbackInit(self, mod)
    saveDataManager(nil, "postPlayerChangeType", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerFatalDamage"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, entityTakeDmgPlayer, damageIsFatal
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerNumAllHearts = ____player.getPlayerNumAllHearts
local hasLostCurse = ____player.hasLostCurse
local ____revive = require("lua_modules.isaacscript-common.dist.functions.revive")
local willPlayerRevive = ____revive.willPlayerRevive
local postPlayerFatalDamage = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerFatalDamage")
function hasSubscriptions(self)
    return postPlayerFatalDamage:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, damageAmount, _damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return nil
    end
    local player = tookDamage:ToPlayer()
    if player == nil then
        return nil
    end
    if willPlayerRevive(nil, player) then
        return nil
    end
    if (not hasLostCurse(nil, player)) and (not damageIsFatal(nil, player, damageAmount)) then
        return nil
    end
    local shouldSustainDeath = postPlayerFatalDamage:fire(player)
    if shouldSustainDeath ~= nil then
        return shouldSustainDeath
    end
    return nil
end
function damageIsFatal(self, player, damageAmount)
    local playerNumAllHearts = getPlayerNumAllHearts(nil, player)
    if damageAmount < playerNumAllHearts then
        return false
    end
    local hearts = player:GetHearts()
    local eternalHearts = player:GetEternalHearts()
    local soulHearts = player:GetSoulHearts()
    local boneHearts = player:GetBoneHearts()
    if (((((hearts > 0) and (soulHearts > 0)) or ((hearts > 0) and (boneHearts > 0))) or ((soulHearts > 0) and (boneHearts > 0))) or ((soulHearts > 0) and (eternalHearts > 0))) or (boneHearts >= 2) then
        return false
    end
    return true
end
function ____exports.postPlayerFatalDamageCallbackInit(self, mod)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local postPlayerInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitLate")
function hasSubscriptions(self)
    return postPlayerInitLate:hasSubscriptions()
end
function postPlayerUpdate(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local playerIndex = getPlayerIndex(nil, player)
    if not v.run.firedSet:has(playerIndex) then
        v.run.firedSet:add(playerIndex)
        postPlayerInitLate:fire(player)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set)
    }
}
function ____exports.postPlayerInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postPlayerInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPlayerReordered"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerInit, postPlayerUpdate, postPlayerRender, postGameStarted, dequeue, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayEmpty = ____array.arrayEmpty
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerFromIndex = ____player.getPlayerFromIndex
local getPlayerIndex = ____player.getPlayerIndex
local postPlayerInitReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerInitReordered")
local postPlayerRenderReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerRenderReordered")
local postPlayerUpdateReordered = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPlayerUpdateReordered")
function hasSubscriptions(self)
    return (postPlayerInitReordered:hasSubscriptions() or postPlayerUpdateReordered:hasSubscriptions()) or postPlayerRenderReordered:hasSubscriptions()
end
function postPlayerInit(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerInitReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerInitQueue, playerIndex)
    end
end
function postPlayerUpdate(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerUpdateReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerUpdateQueue, playerIndex)
    end
end
function postPlayerRender(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    if v.run.postGameStartedFiredOnThisRun then
        postPlayerRenderReordered:fire(player)
    else
        local playerIndex = getPlayerIndex(nil, player)
        __TS__ArrayPush(v.run.postPlayerRenderQueue, playerIndex)
    end
end
function postGameStarted(self)
    if not hasSubscriptions(nil) then
        return
    end
    v.run.postGameStartedFiredOnThisRun = true
    dequeue(nil, v.run.postPlayerInitQueue, postPlayerInitReordered.fire)
    dequeue(nil, v.run.postPlayerUpdateQueue, postPlayerUpdateReordered.fire)
    dequeue(nil, v.run.postPlayerRenderQueue, postPlayerRenderReordered.fire)
end
function dequeue(self, playerIndexes, fireFunction)
    for ____, playerIndex in ipairs(playerIndexes) do
        do
            local player = getPlayerFromIndex(nil, playerIndex)
            if player == nil then
                goto __continue19
            end
            fireFunction(nil, player)
        end
        ::__continue19::
    end
    arrayEmpty(nil, playerIndexes)
end
v = {run = {postGameStartedFiredOnThisRun = false, postPlayerInitQueue = {}, postPlayerUpdateQueue = {}, postPlayerRenderQueue = {}}}
function ____exports.postPlayerReorderedCallbacksInit(self, mod)
    saveDataManager(nil, "postPlayerReordered", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, postPlayerInit)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, postPlayerUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_RENDER, postPlayerRender)
    mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, postGameStarted)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postProjectileInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postProjectileUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postProjectileInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postProjectileInitLate")
function hasSubscriptions(self)
    return postProjectileInitLate:hasSubscriptions()
end
function postProjectileUpdate(self, projectile)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(projectile)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postProjectileInitLate:fire(projectile)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postProjectileInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postProjectileInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_PROJECTILE_UPDATE, postProjectileUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postPurchase"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postUpdate, checkPickupsPurchased, storePickupsInMap, storePlayersInMap, pickupIndexExists, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local getPlayers = ____player.getPlayers
local postPurchase = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postPurchase")
function hasSubscriptions(self)
    return postPurchase:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    local pickups = Isaac.FindByType(EntityType.ENTITY_PICKUP)
    local players = getPlayers(nil)
    checkPickupsPurchased(nil, pickups, players)
    storePickupsInMap(nil, pickups)
    storePlayersInMap(nil, players)
end
function checkPickupsPurchased(self, pickups, players)
    for ____, ____value in __TS__Iterator(
        v.room.pickupMap:entries()
    ) do
        local index
        index = ____value[1]
        local pickupDescription
        pickupDescription = ____value[2]
        do
            if pickupIndexExists(nil, index, pickups) then
                goto __continue7
            end
            v.room.pickupMap:delete(index)
            for ____, player in ipairs(players) do
                do
                    local playerHoldingItem = player:IsHoldingItem()
                    local playerIndex = getPlayerIndex(nil, player)
                    local playerHoldingItemLastFrame = v.room.playerHoldingItemLastFrameMap:get(playerIndex)
                    if playerHoldingItemLastFrame == nil then
                        goto __continue9
                    end
                    if (not playerHoldingItemLastFrame) and playerHoldingItem then
                        postPurchase:fire(player, pickupDescription.variant, pickupDescription.subtype, pickupDescription.price)
                        break
                    end
                end
                ::__continue9::
            end
        end
        ::__continue7::
    end
end
function storePickupsInMap(self, pickups)
    for ____, entity in ipairs(pickups) do
        do
            local pickup = entity:ToPickup()
            if (pickup == nil) or (pickup.Price == 0) then
                goto __continue13
            end
            v.room.pickupMap:set(pickup.Index, {variant = pickup.Variant, subtype = pickup.SubType, price = pickup.Price})
        end
        ::__continue13::
    end
end
function storePlayersInMap(self, players)
    for ____, player in ipairs(players) do
        local playerIndex = getPlayerIndex(nil, player)
        local holdingItem = player:IsHoldingItem()
        v.room.playerHoldingItemLastFrameMap:set(playerIndex, holdingItem)
    end
end
function pickupIndexExists(self, index, pickups)
    for ____, entity in ipairs(pickups) do
        if (entity.Index == index) and entity:Exists() then
            return true
        end
    end
    return false
end
v = {
    room = {
        pickupMap = __TS__New(Map),
        playerHoldingItemLastFrameMap = __TS__New(Map)
    }
}
function ____exports.postPurchaseCallbackInit(self, mod)
    saveDataManager(nil, "postPurchase", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSacrifice"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local hasSubscriptions, entityTakeDmgPlayer, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____flag = require("lua_modules.isaacscript-common.dist.functions.flag")
local hasFlag = ____flag.hasFlag
local postSacrifice = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSacrifice")
function hasSubscriptions(self)
    return postSacrifice:hasSubscriptions()
end
function entityTakeDmgPlayer(self, tookDamage, _damageAmount, damageFlags, _damageSource, _damageCountdownFrames)
    if not hasSubscriptions(nil) then
        return
    end
    local player = tookDamage:ToPlayer()
    if player == nil then
        return
    end
    local game = Game()
    local room = game:GetRoom()
    local roomType = room:GetType()
    local isSpikeDamage = hasFlag(nil, damageFlags, DamageFlag.DAMAGE_SPIKES)
    if (roomType == RoomType.ROOM_SACRIFICE) and isSpikeDamage then
        local ____obj, ____index = v.level, "numSacrifices"
        ____obj[____index] = ____obj[____index] + 1
        postSacrifice:fire(player, v.level.numSacrifices)
    end
end
v = {level = {numSacrifices = 0}}
function ____exports.postSacrificeCallbackInit(self, mod)
    saveDataManager(nil, "postSacrifice", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_ENTITY_TAKE_DMG, entityTakeDmgPlayer, EntityType.ENTITY_PLAYER)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSlotInitUpdate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postUpdate, postNewRoom, checkNewEntity, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local getSlots = ____entity.getSlots
local postSlotInit = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotInit")
local postSlotUpdate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotUpdate")
function hasSubscriptions(self)
    return postSlotInit:hasSubscriptions() or postSlotUpdate:hasSubscriptions()
end
function postUpdate(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, slot in ipairs(
        getSlots(nil)
    ) do
        checkNewEntity(nil, slot)
        postSlotUpdate:fire(slot)
    end
end
function postNewRoom(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, slot in ipairs(
        getSlots(nil)
    ) do
        checkNewEntity(nil, slot)
    end
end
function checkNewEntity(self, slot)
    local ptrHash = GetPtrHash(slot)
    if not v.room.initializedSlots:has(ptrHash) then
        v.room.initializedSlots:add(ptrHash)
        postSlotInit:fire(slot)
    end
end
v = {
    room = {
        initializedSlots = __TS__New(Set)
    }
}
function ____exports.postSlotInitUpdateCallbacksInit(self, mod)
    saveDataManager(nil, "postSlotInitUpdate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_UPDATE, postUpdate)
    mod:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, postNewRoom)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postSlotRenderBroken"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postRender, checkSlotBroken, BROKEN_ANIMATIONS, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____entity = require("lua_modules.isaacscript-common.dist.functions.entity")
local getSlots = ____entity.getSlots
local postSlotDestroyed = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotDestroyed")
local postSlotRender = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postSlotRender")
function hasSubscriptions(self)
    return postSlotRender:hasSubscriptions() or postSlotDestroyed:hasSubscriptions()
end
function postRender(self)
    if not hasSubscriptions(nil) then
        return
    end
    for ____, slot in ipairs(
        getSlots(nil)
    ) do
        postSlotRender:fire(slot)
        checkSlotBroken(nil, slot)
    end
end
function checkSlotBroken(self, slot)
    local ptrHash = GetPtrHash(slot)
    local alreadyBroken = v.room.brokenSlots:has(ptrHash)
    if alreadyBroken then
        return
    end
    local sprite = slot:GetSprite()
    local animation = sprite:GetAnimation()
    if BROKEN_ANIMATIONS:has(animation) then
        v.room.brokenSlots:add(ptrHash)
        postSlotDestroyed:fire(slot)
    end
end
BROKEN_ANIMATIONS = __TS__New(Set, {"Broken", "Death"})
v = {
    room = {
        brokenSlots = __TS__New(Set)
    }
}
function ____exports.postSlotRenderBrokenCallbacksInit(self, mod)
    saveDataManager(nil, "postSlotRenderBroken", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_RENDER, postRender)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postTearInitLate"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postTearUpdate, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____rooms = require("lua_modules.isaacscript-common.dist.functions.rooms")
local getRoomIndex = ____rooms.getRoomIndex
local getRoomVisitedCount = ____rooms.getRoomVisitedCount
local postTearInitLate = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTearInitLate")
function hasSubscriptions(self)
    return postTearInitLate:hasSubscriptions()
end
function postTearUpdate(self, tear)
    if not hasSubscriptions(nil) then
        return
    end
    local roomIndex = getRoomIndex(nil)
    local roomVisitedCount = getRoomVisitedCount(nil)
    if (roomIndex ~= v.run.currentRoomIndex) or (roomVisitedCount ~= v.run.currentRoomVisitedCount) then
        v.run.currentRoomIndex = roomIndex
        v.run.currentRoomVisitedCount = roomVisitedCount
        v.run.firedSet:clear()
    end
    local index = GetPtrHash(tear)
    if not v.run.firedSet:has(index) then
        v.run.firedSet:add(index)
        postTearInitLate:fire(tear)
    end
end
v = {
    run = {
        firedSet = __TS__New(Set),
        currentRoomIndex = nil,
        currentRoomVisitedCount = nil
    }
}
function ____exports.postTearInitLateCallbackInit(self, mod)
    saveDataManager(nil, "postTearInitLate", v, hasSubscriptions)
    mod:AddCallback(ModCallbacks.MC_POST_TEAR_UPDATE, postTearUpdate)
end
return ____exports
 end,
["lua_modules.isaacscript-common.dist.callbacks.postTransformation"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
require("lualib_bundle");
local ____exports = {}
local hasSubscriptions, postPlayerUpdateReorderedPlayer, v
local ____exports = require("lua_modules.isaacscript-common.dist.features.saveDataManager.exports")
local saveDataManager = ____exports.saveDataManager
local ____array = require("lua_modules.isaacscript-common.dist.functions.array")
local arrayInit = ____array.arrayInit
local ____player = require("lua_modules.isaacscript-common.dist.functions.player")
local getPlayerIndex = ____player.getPlayerIndex
local ____ModCallbacksCustom = require("lua_modules.isaacscript-common.dist.types.ModCallbacksCustom")
local ModCallbacksCustom = ____ModCallbacksCustom.ModCallbacksCustom
local postTransformation = require("lua_modules.isaacscript-common.dist.callbacks.subscriptions.postTransformation")
function hasSubscriptions(self)
    return postTransformation:hasSubscriptions()
end
function postPlayerUpdateReorderedPlayer(self, player)
    if not hasSubscriptions(nil) then
        return
    end
    local index = getPlayerIndex(nil, player)
    local transformations = v.run.transformations:get(index)
    if transformations == nil then
        transformations = arrayInit(nil, false, PlayerForm.NUM_PLAYER_FORMS - 1)
        v.run.transformations:set(index, transformations)
    end
    do
        local playerForm = 0
        while playerForm < PlayerForm.NUM_PLAYER_FORMS do
            local hasForm = player:HasPlayerForm(playerForm)
            local storedForm = transformations[playerForm + 1]
            if hasForm ~= storedForm then
                transformations[playerForm + 1] = hasForm
                postTransformation:fire(player, playerForm, hasForm)
            end
            playerForm = playerForm + 1
        end
    end
end
v = {
    run = {
        transformations = __TS__New(Map)
    }
}
function ____exports.postTransformationCallbackInit(self, mod)
    saveDataManager(nil, "postTransformation", v, hasSubscriptions)
    mod:AddCallbackCustom(ModCallbacksCustom.MC_POST_PLAYER_UPDATE_REORDERED, postPlayerUpdateReorderedPlayer, 0)
end
return ____exports
 end,
}
return require("bundleEntry", ...)
