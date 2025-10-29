#!/bin/bash

# Function for factorial
factorial() {
    num=$1
    fact=1
    for ((i = 1; i <= num; i++)); do
        fact=$((fact * i))
    done
    echo $fact
}

while true
do
    echo "------------------------------------"
    echo "         TERMINAL CALCULATOR         "
    echo "------------------------------------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulus"
    echo "6. Sine"
    echo "7. Cosine"
    echo "8. Tangent"
    echo "9. Factorial"
    echo "10. Square"
    echo "11. Square Root"
    echo "12. Logarithm"
    echo "13. Exit"
    echo "------------------------------------"
    read -p "Enter your choice (1-13): " choice

    case $choice in
        1)
            read -p "Enter first number: " a
            read -p "Enter second number: " b
            echo "Result: $((a + b))"
            ;;
        2)
            read -p "Enter first number: " a
            read -p "Enter second number: " b
            echo "Result: $((a - b))"
            ;;
        3)
            read -p "Enter first number: " a
            read -p "Enter second number: " b
            echo "Result: $((a * b))"
            ;;
        4)
            read -p "Enter numerator: " a
            read -p "Enter denominator: " b
            if [ $b -eq 0 ]; then
                echo "Error: Division by zero!"
            else
                result=$(echo "scale=4; $a / $b" | bc)
                echo "Result: $result"
            fi
            ;;
        5)
            read -p "Enter first number: " a
            read -p "Enter second number: " b
            echo "Result: $((a % b))"
            ;;
        6)
            read -p "Enter angle in degrees: " a
            result=$(echo "scale=4; s($a*3.14159/180)" | bc -l)
            echo "sin($a) = $result"
            ;;
        7)
            read -p "Enter angle in degrees: " a
            result=$(echo "scale=4; c($a*3.14159/180)" | bc -l)
            echo "cos($a) = $result"
            ;;
        8)
            read -p "Enter angle in degrees: " a
            result=$(echo "scale=4; s($a*3.14159/180)/c($a*3.14159/180)" | bc -l)
            echo "tan($a) = $result"
            ;;
        9)
            read -p "Enter a number: " n
            echo "Factorial of $n = $(factorial $n)"
            ;;
        10)
            read -p "Enter a number: " a
            echo "Square = $((a * a))"
            ;;
        11)
            read -p "Enter a number: " a
            result=$(echo "scale=4; sqrt($a)" | bc -l)
            echo "Square Root = $result"
            ;;
        12)
            read -p "Enter a number: " a
            result=$(echo "scale=4; l($a)" | bc -l)
            echo "Logarithm (base e) = $result"
            ;;
        13)
            echo "Exiting calculator... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please select a valid option."
            ;;
    esac
    echo ""
done
