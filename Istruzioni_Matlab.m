%% Istruzioni per gestione Workspace.

help % richiama l’help in linea.
help comando % visualizza l’help relativo al comando indicato.

who, whos % elencano le variabili in uso.

dir % elenca i files contenuti nel direttorio corrente.

clear all % elimina tutte le variabili della sessione corrente.

clear var1 var2 %elimina le variabili var1 e var2.

%% Istruzioni per Sistemi di Controllo.

impulse (num, den, t) % calcola la risposta all’impulso del sistema la cui 
                      % funzione di trasferimento è descritta dai polinomi 
                      % num e den. t è il vettore che definisce il tempo.

step (num, den, t) % calcola la risposta allo scalino del sistema la cui 
                   % funzione di trasferimento è descritta dai polinomi 
                   % num e den. t è il vettore che definisce il tempo.

lsim (num, den, u, t) % calcola la risposta del sistema la cui funzione di 
                      % trasferimento è descritta dai polinomi num e den 
                      % all’ingresso u. t è il vettore che definisce il
                      % tempo.

bode (num, den, w) % calcola modulo e fase della funzione di trasferimento 
                   % descritta dai polinomi num e den in corrispondenza 
                   % delle pulsazioni specificate dal vettore w (omega).

bode (num, den) % visualizza automaticamente il diagramma di modulo e fase 
                % della funzione di trasferimento descritta dai polinomi
                % num e den.

nyquist (num, den, w) % traccia il diagramma di Nyquist della funzione 
                      % di trasferimento descritta dai polinomi num e den 
                      % in corrispondenza delle pulsazioni specificate dal 
                      % vettore w.

rlocus (num, den, k) % traccia il luogo delle radici della funzione di 
                     % trasferimento descritta dai polinomi num e den. 
                     % k rappresenta il vettore dei guadagni.

rlocus (num, den) % traccia il luogo delle radici della funzione di 
                  % trasferimento descritta dai polinomi num e den 
                  % utilizzando un vettore dei guadagni determinato
                  % automaticamente.

tf(num,den) % crea una funzione di trasferimento a tempo continuo con 
            % numeratore e denominatore specificato dai parametri num e den.

ss(A,B,C,D) % crea un oggetto che rappresenta un modello nello spazio di 
            % stato di un sistema a tempo continuo. In input vengono 
            % passate le 4 matrici A,B,C,D