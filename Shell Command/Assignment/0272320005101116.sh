#!/bin/bash
# -----------------------------------------
# Terminal-Based Calculator
# File Name: 1234.sh
# -----------------------------------------

# Function to calculate factorial
factorial() {
    num=$1
    fact=1
    for ((i=1; i<=num; i++))
    do
        fact=$((fact * i))
    done
    echo "Factorial of $num is: $fact"
}

# Function to display menu
show_menu() {
    echo "=============================="
    echo "     Terminal Calculator"
    echo "=============================="
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
    echo "=============================="
}

# Main program loop
while true
do
    show_menu
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
                echo "Result: $(echo "scale=2; $a / $b" | bc)"
            fi
            ;;
        5)
            read -p "Enter first number: " a
            read -p "Enter second number: " b
            echo "Result: $((a % b))"
            ;;
        6)
            read -p "Enter angle (in degrees): " angle
            rad=$(echo "scale=4; $angle*3.1416/180" | bc)
            echo "Sine($angle°) = $(echo "scale=4; s($rad)" | bc -l)"
            ;;
        7)
            read -p "Enter angle (in degrees): " angle
            rad=$(echo "scale=4; $angle*3.1416/180" | bc)
            echo "Cosine($angle°) = $(echo "scale=4; c($rad)" | bc -l)"
            ;;
        8)
            read -p "Enter angle (in degrees): " angle
            rad=$(echo "scale=4; $angle*3.1416/180" | bc)
            echo "Tangent($angle°) = $(echo "scale=4; s($rad)/c($rad)" | bc -l)"
            ;;
        9)
            read -p "Enter a number: " num
            factorial $num
            ;;
        10)
            read -p "Enter number: " num
            echo "Square: $(echo "$num * $num" | bc)"
            ;;
        11)
            read -p "Enter number: " num
            echo "Square Root: $(echo "scale=4; sqrt($num)" | bc -l)"
            ;;
        12)
            read -p "Enter number: " num
            echo "Logarithm (base e): $(echo "scale=4; l($num)" | bc -l)"
            ;;
        13)
            echo "Exiting Calculator. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice! Please enter 1–13."
            ;;
    esac
   echo
   read -p "Please Enter to continue....."
    clear
    
done

