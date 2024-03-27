import socket

SERVER_ADDRESS = '/tmp/chardev_socket'

def send_request(operation, operand1, operand2):
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as s:
        try:
            s.connect(SERVER_ADDRESS)
            print("Sending request.")
            s.send(f"{operation} {operand1} {operand2}".encode())
            print("Request OKAY.")
            response = s.recv(1024).decode().strip()
            print("Receiving response.")
            return response
        except ConnectionRefusedError:
            return "Error: Server is not running"
        except OSError as e:
            return f"Error: {e}"

def main():
    print("Initiallization of chardev Client!")
    while True:
        print("\nChoose an operation:")
        print("(1) Add 2 numbers")
        print("(2) Multiply 2 numbers")
        print("(3) Subtract 2 numbers")
        print("(4) Divide 2 numbers")
        print("(5) Exit")
        
        choice = input("Enter command (1-5): ")
        
        if choice == '5':
            break
        
        if choice not in {'1', '2', '3', '4'}:
            print("Invalid command. Please try again.")
            continue
        
        try:
            operand1 = int(input("Enter operand 1: "))
            operand2 = int(input("Enter operand 2: "))
        except ValueError:
            print("Invalid operands. Please enter integers.")
            continue
			
        result = send_request(choice, operand1, operand2)
        print("Result is:", result, "!")

main()
