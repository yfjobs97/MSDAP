
expectedL = []
expectedR = []
obtainedL = []
obtainedR = []

with open('datanew.out') as f:
    for lines in f:
        tempE = (lines.split())
        expectedL.append(tempE[0])
        expectedR.append(tempE[1])

with open('data1.out') as g:
    for line in g:
        tempO = (line.split())
        obtainedL.append(tempO[0])
        obtainedR.append(tempO[1])

correctL = 0
correctR = 0

for i in range(len(expectedL)):
    if (expectedL[i] != obtainedL[i]):
        correctL = 1
        print("LEFT: Obtained Result ", obtainedL[i], " does not match Expected Result ", expectedL[i], " in line ", i + 1)

for i in range(len(expectedR)):
    if (expectedR[i] != obtainedR[i]):
        correctR = 1
        print("RIGHT: Obtained Result ", obtainedR[i], " does not match Expected Result ", expectedR[i], " in line ", i + 1)

if (correctL):
    print("Results in the LEFT channel do not match.")
if (correctR):
    print("Results in the RIGHT channel do not match.")
if(not (correctR or correctL)):
    print("Results match!")
