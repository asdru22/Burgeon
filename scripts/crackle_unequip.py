for i in range (0,36):
  print("execute if items entity @s container."+str(i)+" poisonous_potato[minecraft:custom_data~{brg:{id:\"crackle\"}}] run item modify entity @s container."+str(i)+" brg:crackle/unequip")
