from datetime import datetime
import inspect
import os

# --------INFO LOG FUNCTION -----------##

# def log(request, message):
#     # datetime object containing current date and time
#     now = datetime.now()
#     # dd/mm/YY H:M:S
#     dt_string = now.strftime("%d/%m/%Y %H:%M:%S")
#     user = str(request.user)
#     method = str(request.method)
#     path = str(request.path)
#     scheme = str(request.scheme)
#     encoding = str(request.encoding)
#     content_type = str(request.content_type)
#     content_params = str(request.content_params)
#     COOKIES = str(request.COOKIES)
#     META = str(request.META)
#     FILES = str(request.FILES)
#     message = str(message)
#     IP = get_client_ip_address(request)
#     # Get the frame of the caller
#     caller_frame = inspect.currentframe().f_back
#     # Get the line number from the frame
#     line_number = caller_frame.f_lineno
#     line_number  = " Line No.-> " + str(line_number)

#     infodata = line_number + " :: "  + message
#     errordata= line_number + " :: " + dt_string + "--" + scheme + "--" + IP + "--" + method + "--" + path + "--" + user + "---" + "'" + message + "'" + "--" + encoding + "--" + content_type + "--" + content_params + "--" + COOKIES + "--" + FILES + "--" + META

#     with open("info.logs", 'a',encoding='utf-8') as infofile:
#         infofile.write(infodata)
#         infofile.write("\n")
#         infofile.close()

#     with open("error.logs", 'a',encoding='utf-8') as errorfile:
#         errorfile.write(errordata)
#         errorfile.write("\n")
#         errorfile.close()


# def get_client_ip_address(request):
#     req_headers = request.META
#     x_forwarded_for_value = req_headers.get('HTTP_X_FORWARDED_FOR')
#     if x_forwarded_for_value:
#         ip_addr = x_forwarded_for_value.split(',')[-1].strip()
#     else:
#         ip_addr = req_headers.get('REMOTE_ADDR')
#     return ip_addr


def logs(message):
    
    # Get the frame of the caller
    caller_frame = inspect.currentframe().f_back
    # Get the line number from the frame
    line_number = caller_frame.f_lineno
    filepath = caller_frame.f_globals["__file__"]
    file_name = os.path.basename(filepath)
    file_name = str(file_name)
    line_number  = " [ "+str(line_number)+" ] "
    logdata = file_name + line_number +"-->" + message
    with open("message.logs", 'a',encoding='utf-8') as messagefile:
        messagefile.write(logdata)
        messagefile.write("\n")
        messagefile.close()
