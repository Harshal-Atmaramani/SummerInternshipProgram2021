import joblib
name = input('Kindly enter your name: ')
numyexp = float(input('Kindly enter your experience in no. of years: ')
model=joblib.load('marks.pk1')
print(f'\nName: {name}')
print(f'Years of experience you have: {numyexp}')
output=model.predict([[numyexp]])
print(f'Your predicted salary is {output}')                
