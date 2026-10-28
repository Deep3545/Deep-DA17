# Excercise 1
def greet():
    print("Welcome to Data Analytics")
greet()

# Excercise 2
def calculate(a, b):
    sum_result = a + b
    difference = a - b
    product = a * b

    if b != 0:
        quotient = a / b
    else:
        quotient = "Cannot divide by zero"

    return sum_result, difference, product, quotient



result = calculate(20, 5)

print("Sum:", result[0])
print("Difference:", result[1])
print("Product:", result[2])
print("Quotient:", result[3])

# Excercise 3
def final_salary(basic_salary, bonus_percentage):
    bonus = basic_salary * bonus_percentage / 100
    salary = basic_salary + bonus
    return salary



result = final_salary(30000, 10)

print("Final Salary:", result)

# Excercise 4
def sales_summary(sales):
    total = sum(sales)
    average = total / len(sales)
    highest = max(sales)
    lowest = min(sales)

    return total, average, highest, lowest

daily_sales = [1000, 2500, 1800, 3200, 1500]

total, average, highest, lowest = sales_summary(daily_sales)

print("Total Sales:", total)
print("Average Sales:", average)
print("Highest Sales:", highest)
print("Lowest Sales:", lowest)

# Excercise 5
def calculate_grade(marks):
    if marks >= 90:
        return "A"
    elif marks >= 80:
        return "B"
    elif marks >= 70:
        return "C"
    elif marks >= 60:
        return "D"
    else:
        return "F"


print("Marks: 95, Grade:", calculate_grade(95))
print("Marks: 85, Grade:", calculate_grade(85))
print("Marks: 75, Grade:", calculate_grade(75))
print("Marks: 65, Grade:", calculate_grade(65))
print("Marks: 45, Grade:", calculate_grade(45))

# Excercise 6
def calculate_discount(price, discount_percentage):
    discount_amount = price * discount_percentage / 100
    final_price = price - discount_amount

    return discount_amount, final_price

price = 2000
discount = 10

discount_amount, final_price = calculate_discount(price, discount)

print("Discount Amount:", discount_amount)
print("Final Price:", final_price)

# Excercise 7
def count_transactions(transactions):
    count = 0

    for value in transactions:
        if value >= 5000:
            count += 1

    return count



transactions = [2500, 5000, 7500, 3000, 12000, 4500, 6000]

result = count_transactions(transactions)

print("Transactions >= ₹5,000:", result)

# Excercise 8
def total_revenue(order_amounts):
    return sum(order_amounts)


def average_order_value(order_amounts):
    return sum(order_amounts) / len(order_amounts)


def number_of_orders(order_amounts):
    return len(order_amounts)


# Test data
orders = [1200, 2500, 3000, 1800, 4500]

print("Total Revenue:", total_revenue(orders))
print("Average Order Value:", average_order_value(orders))
print("Number of Orders:", number_of_orders(orders))