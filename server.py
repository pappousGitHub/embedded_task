import socket
import os

# Set the path for the Unix socket
socket_path = '/tmp/my_socket'

# remove the socket file if it already exists
try:
    os.unlink(socket_path)
except OSError:
    if os.path.exists(socket_path):
        raise

# Create the Unix socket server
server = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

# Bind the socket to the path
server.bind(socket_path)

# Listen for incoming connections
server.listen(1)

# accept connections
print('Server is listening for incoming connections...')
connection, client_address = server.accept()

try:
    print('Connection from', str(connection).split(", ")[0][-4:])

    # receive data from the client
    while True:
        data = connection.recv(1024).decode().strip().split()
        if len(data)==3:
             operation, operand1, operand2 = data
        elif len(data)!=3:
             break

        print("Client connected!")
        # Send a response back to the client
        response = 'Hello from the server!'
        connection.sendall(response.encode())
finally:
    # close the connection
    connection.close()
    # remove the socket file
    os.unlink(socket_path)
