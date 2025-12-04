#!/bin/bash

# Function to display the menu
display_menu() {
    clear
    echo "=========================================="
    echo "     TERMINAL-BASED CALCULATOR"
    echo "=========================================="
    echo "1.  Addition"
    echo "2.  Subtraction"
    echo "3.  Multiplication"
    echo "4.  Division"
    echo "5.  Modulus"
    echo "6.  Sine"
    echo "7.  Cosine"
    echo "8.  Tangent"
    echo "9.  Factorial"
    echo "10. Square"
    echo "11. Square Root"
    echo "12. Logarithm (Natural Log)"
    echo "13. Exit"
    echo "=========================================="
}

# Function for Addition
addition() {
    echo -e "\n--- Addition ---"
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$(echo "$num1 + $num2" | bc -l)
    echo "Result: $num1 + $num2 = $result"
}

# Function for Subtraction
subtraction() {
    echo -e "\n--- Subtraction ---"
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$(echo "$num1 - $num2" | bc -l)
    echo "Result: $num1 - $num2 = $result"
}

# Function for Multiplication
multiplication() {
    echo -e "\n--- Multiplication ---"
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    result=$(echo "$num1 * $num2" | bc -l)
    echo "Result: $num1 × $num2 = $result"
}

# Function for Division
division() {
    echo -e "\n--- Division ---"
    read -p "Enter dividend: " num1
    read -p "Enter divisor: " num2
    
    # Check for division by zero
    if [ $(echo "$num2 == 0" | bc) -eq 1 ]; then
        echo "Error: Division by zero is not allowed!"
    else
        result=$(echo "scale=4; $num1 / $num2" | bc -l)
        echo "Result: $num1 ÷ $num2 = $result"
    fi
}

# Function for Modulus
modulus() {
    echo -e "\n--- Modulus ---"
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    
    # Check for modulus by zero
    if [ $(echo "$num2 == 0" | bc) -eq 1 ]; then
        echo "Error: Modulus by zero is not allowed!"
    else
        result=$(echo "$num1 % $num2" | bc -l)
        echo "Result: $num1 mod $num2 = $result"
    fi
}

# Function for Sine (input in degrees)
sine() {
    echo -e "\n--- Sine ---"
    read -p "Enter angle in degrees: " angle
    
    # Convert degrees to radians: radians = degrees * pi / 180
    radians=$(echo "scale=10; $angle * 3.14159265359 / 180" | bc -l)
    result=$(echo "scale=6; s($radians)" | bc -l)
    echo "Result: sin($angle°) = $result"
}

# Function for Cosine (input in degrees)
cosine() {
    echo -e "\n--- Cosine ---"
    read -p "Enter angle in degrees: " angle
    
    # Convert degrees to radians
    radians=$(echo "scale=10; $angle * 3.14159265359 / 180" | bc -l)
    result=$(echo "scale=6; c($radians)" | bc -l)
    echo "Result: cos($angle°) = $result"
}

# Function for Tangent (input in degrees)
tangent() {
    echo -e "\n--- Tangent ---"
    read -p "Enter angle in degrees: " angle
    
    # Convert degrees to radians
    radians=$(echo "scale=10; $angle * 3.14159265359 / 180" | bc -l)
    
    # Calculate tangent as sin/cos
    sin_val=$(echo "scale=10; s($radians)" | bc -l)
    cos_val=$(echo "scale=10; c($radians)" | bc -l)
    
    # Check if cosine is zero (tangent undefined at 90, 270, etc.)
    if [ $(echo "$cos_val == 0" | bc) -eq 1 ]; then
        echo "Result: tan($angle°) = undefined (angle is 90° + n*180°)"
    else
        result=$(echo "scale=6; $sin_val / $cos_val" | bc -l)
        echo "Result: tan($angle°) = $result"
    fi
}

# Function for Factorial
factorial() {
    echo -e "\n--- Factorial ---"
    read -p "Enter a non-negative integer: " num
    
    # Check if number is negative
    if [ $(echo "$num < 0" | bc) -eq 1 ]; then
        echo "Error: Factorial is not defined for negative numbers!"
        return
    fi
    
    # Check if number is an integer
    if [ $(echo "$num != $(printf '%.0f' $num)" | bc) -eq 1 ]; then
        echo "Error: Please enter an integer value!"
        return
    fi
    
    # Calculate factorial
    result=1
    n=$(printf '%.0f' $num)
    
    for ((i=2; i<=n; i++)); do
        result=$((result * i))
    done
    
    echo "Result: $num! = $result"
}

# Function for Square
square() {
    echo -e "\n--- Square ---"
    read -p "Enter a number: " num
    result=$(echo "scale=4; $num * $num" | bc -l)
    echo "Result: ($num)² = $result"
}

# Function for Square Root
square_root() {
    echo -e "\n--- Square Root ---"
    read -p "Enter a number: " num
    
    # Check if number is negative
    if [ $(echo "$num < 0" | bc) -eq 1 ]; then
        echo "Error: Square root of negative number is not real!"
    else
        result=$(echo "scale=6; sqrt($num)" | bc -l)
        echo "Result: √$num = $result"
    fi
}

# Function for Natural Logarithm
logarithm() {
    echo -e "\n--- Natural Logarithm (ln) ---"
    read -p "Enter a positive number: " num
    
    # Check if number is positive
    if [ $(echo "$num <= 0" | bc) -eq 1 ]; then
        echo "Error: Logarithm is only defined for positive numbers!"
    else
        result=$(echo "scale=6; l($num)" | bc -l)
        echo "Result: ln($num) = $result"
    fi
}

# Main program loop
while true; do
    display_menu
    read -p "Enter your choice (1-13): " choice
    
    case $choice in
        1) addition ;;
        2) subtraction ;;
        3) multiplication ;;
        4) division ;;
        5) modulus ;;
        6) sine ;;
        7) cosine ;;
        8) tangent ;;
        9) factorial ;;
        10) square ;;
        11) square_root ;;
        12) logarithm ;;
        13) 
            echo -e "\nThank you for using the calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo -e "\nInvalid choice! Please enter a number between 1 and 13."
            ;;
    esac
    
    echo -e "\nPress Enter to continue..."
    read
done
