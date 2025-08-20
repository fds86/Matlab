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
                      % num e den. t è il vettore che definisce il tempo 
                      % (il vettore tempo non è un parametro obbligatorio).

step (num, den, t) % calcola la risposta allo scalino del sistema la cui 
                   % funzione di trasferimento è descritta dai polinomi 
                   % num e den. t è il vettore che definisce il tempo.
                   % (il vettore tempo non è un parametro obbligatorio).

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

tf(num,den) % crea una funzione di trasferimento a tempo continuo 
            % con numeratore e denominatore specificato dai parametri 
            % num e den.

ss(A,B,C,D) % crea un oggetto che rappresenta un modello nello spazio 
            % di stato di un sistema a tempo continuo. In input vengono 
            % passate le 4 matrici A,B,C,D.

zpk(z,p,k) % crea un oggetto che rappresenta un sistema a tempo continuo 
           % passando in input gli zeri z, i poli p e il guadagno k.

c2d(sys_c,Tc,method) % è possibile convertire un sistema a tempo 
                     % continuo in uno a tempo discreto.

[y,t,x]=initial(sys,x0); % permette di tracciare l'evoluzione libera di un
                         % sistema ottenuto da un modello nello spazio di
                         % stato (ss).
                         % sys -> sistema nello spazio di stato.
                         % x0 -> vettore dello stato iniziale.
                         % y -> uscita in evoluzione libera.
                         % x -> evoluzione dello stato.

 [y,t,x]=step(sys); % permette di disegnare la risposta a gradino di un sistema
                    % sys -> sistema ottenuto tramite funzioni ss o tf.
                    % y -> risposta a gradino.
                    % x -> evoluzione dello stato.