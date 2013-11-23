Component 	= class()
Entity 		= class()
Controller 	= class()
Property 	= class()
Action 		= class()
Signal,Slot	= class() , class


-- ===== ENTITY ========================================================================

-----------------------------------------------------------
function Entity:init()
	--fields ~~~~~~~~~~~~~~~~~~~~~~~
	self.components = {}
end

-----------------------------------------------------------
function Entity:constructComponents()
	self:addComponent(RenderComponent)
	self:addComponent(TransformComponent)
end

-----------------------------------------------------------
function Entity:addComponent(component)
	self.components:addUnique(component)
end

-----------------------------------------------------------
function Entity:removeComponent(component)
	self.components:removeUnique(component)
end

-- ===== COMPONENT ===================================================================



-- ===== PROPERTY ====================================================================



-- ===== METHOD ======================================================================



-- ===== SIGNAL ======================================================================


-- ===== SLOT ========================================================================



(RenderComponent)
Gear:add



Component
	Property1
	Property2

	Method1
	Method2

	--send
	KillSignal

	--receive
	DieSlot

