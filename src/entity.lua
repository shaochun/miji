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
	--self:addComponent(RenderComponent)
	--self:addComponent(TransformComponent)

	print("override me")
end

-----------------------------------------------------------
function Entity:addComponent(component)
	self.components:addUnique(component)
end

-----------------------------------------------------------
function Entity:removeComponent(component)
	self.components:removeUnique(component)
end