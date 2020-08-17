%Establish the connection between matlab and unity by sending the identified task through the connected socket to Unity
clc
tcpipClient = tcpip('127.0.0.1',3000,'NetworkRole','Client');
set(tcpipClient,'Timeout',300);
try
fopen(tcpipClient);
fwrite(tcpipClient,TestModelTask);
fclose(tcpipClient);
disp(TestModelTask)
catch
   errordlg('Unity Server is not running', 'Connect Error');
end

