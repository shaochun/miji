Component 	= class()
Entity 		= class()
Controller 	= class()
Property 	= class()
Action 		= class()
Signal,Slot	= class() , class

-- ===== COMPONENT ===================================================================

-----------------------------------------------------------
function Component:init()
	--fields ~~~~~~~~~~~~~~~~~~~~~~~
	self.actions 	= {}
	self.properties = {}
end

--- method -------------------------------------------------
function Component:constructAction()
	print("override me")
end

function Component:addAction(method)
	self.actions:addUnique(method)
end

function Component:removeAction(method)
	self.actions:removeUnique(method)
end

--- property ----------------------------------------------
function Component:constructProperty()
	print("override me")
end

function Component:addProperty(property)
	self.properties:addUnique(property)
end

function Component:removeProperty(property)
	self.properties:removeUnique(property)
end

-- ===== TRANSFORM_COMPONENT =======================================================
TransformComponent = class(Component)

-----------------------------------------------------------
function TransformComponent:init()
	-- fields ~~~~~~~~~~~~~~~
	self.what = ".transform"

	-- constructs ~~~~~~~~~~~
	self:constructProperties()
end

-----------------------------------------------------------
function TransformComponent:constructProperties()
	self:addProperty(".x", float, 'rw')
	self:addProperty(".y", float, 'r')
end


-----------------------------------------------------------
function TransformComponent:constructActions()
	self:addAction(self:getPosAction, ":getPos")
	self:addAction(self:setPosAction, ":setPos", x_ , y_)
end


function TransformComponent::setPosAction(x_, y_)
	.x = x_
	.y = y_
end

function TransformComponent::getPosAction()
	$return {.x, .y}
end

-----------------------------------------------------------
function TransformComponent:constructSignalsAndSlots()
end


-- ===== SIZE_COMPONENT ============================================================
SizeComponent = class(Component)

-----------------------------------------------------------
function SizeComponent:init()
	-- fields ~~~~~~~~~~~~~~~
	self.what = ".size"

	-- constructs ~~~~~~~~~~~
	self:constructProperties()
end

-----------------------------------------------------------
function SizeComponent:constructProperties()
	self:addProperty(".width",  float, 'rw')
	self:addProperty(".height", float, 'r')
end


-----------------------------------------------------------
function SizeComponent:constructActions()
	self:addAction(self:area, ":area")
end

function SizeComponent::area()
	$return .width * .height
end

-----------------------------------------------------------
function SizeComponent:constructSignalsAndSlots()
end