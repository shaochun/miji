fya = Entity()

fya:addComponent(&TransformComponent)



fya = Entity()
fya:addComponent($TransformComponent)

fya.transform.x = 30   --'rw'
print fya.transform.y  --'r'

print fya.transform:getPos()
fya.transformSetPos(30,40)

-- ================================================================================