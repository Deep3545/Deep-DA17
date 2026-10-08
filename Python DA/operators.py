# Task - 1
# def check_number(num):
#     if num > 0:
#         return "Positive"
#     elif num < 0:
#         return "Negative"
#     else:
#         return "Zero"


# print(check_number(10))   
# print(check_number(-5))   
# print(check_number(0))    

# # Task - 2 
# def check_even_odd(num):
#     if num % 2 == 0:
#         return "Even"
#     else:
#         return "Odd"


# print(check_even_odd(4))  
# print(check_even_odd(7))  

# # Task - 3 
# def categorize_sales(sales):
#     if sales >= 100000:
#         return 'Excellent'
#     elif sales >= 75000:
#         return 'Good'
#     elif sales >= 50000:
#         return 'Average'
#     else:
#         return 'Poor'


# print(categorize_sales(120000))  
# print(categorize_sales(80000))   
# print(categorize_sales(55000))   
# print(categorize_sales(30000))   

# # Task - 4 
# # Task - 5

# purchase = float(input("Enter purchase amount: "))

# if purchase >= 100000:
#     customer_type = "Premium"
# elif purchase >= 50000:
#     customer_type = "Gold"
# elif purchase >= 25000:
#     customer_type = "Silver"
# else:
#     customer_type = "Regular"

# print("Customer Type:", customer_type)

# Task - 6
# amount = float(input("Enter amount: "))

# if amount >= 100000:
#     discount_percent = 20
# elif amount >= 50000:
#     discount_percent = 10
# elif amount >= 25000:
#     discount_percent = 5
# else:
#     discount_percent = 0

# discount_amount = (amount * discount_percent) / 100
# final_amount = amount - discount_amount

# print("Discount Percent:", discount_percent, "%")
# print("Discount Amount:", discount_amount)
# print("Final Amount:", final_amount)

# Task - 7
# sales = float(input("Enter sales amount: "))
# profit = float(input("Enter profit amount: "))

# if sales >= 100000 and profit >= 20000:
#     status = "Bonus Eligible"
# else:
#     status = "Not Eligible"

# print("Status:", status)

# Task - 8
# age = int(input("Enter customer age: "))

# if 18 <= age <= 100:
#     status = "Valid"
# else:
#     status = "Invalid"

# print("Status:", status)

# # Task - 9
# marks = float(input("Enter marks: "))

# if marks >= 90:
#     grade = "A"
# elif marks >= 75:
#     grade = "B"
# elif marks >= 60:
#     grade = "C"
# elif marks >= 35:
#     grade = "D"
# else:
#     grade = "Fail"

# print("Grade:", grade)

# Task - 10
quantity = float(input("Enter quantity: "))
unit_price = float(input("Enter unit price: "))

if quantity > 0 and unit_price > 0:
    status = "Valid Order"
else:
    status = "Invalid Order"

print("Status:", status)