import socket

ports_list = [21,22,25,3306]
target = "10.0.2.15"

for i in range(0, 4):
    try:
        current_port =  port_list[i]
        print(f"Checking port: {current_port}")

        s = socket.socket()

        s.settimeout(2)
        s.connect((target, current_port))

        answer = s.recv(1024)
        print(f"Banner for port {current_port}: {answer.decode().strip()}")

        s.close()
            except socket.timeout:
            print(f"Port {current_port}: No response (Timeout)")
            except Exception as e:
            print(f"Port {current_port}: Could not connect ({e})")
