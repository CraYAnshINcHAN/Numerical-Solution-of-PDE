function E=AccuracyRace(N) 

E=zeros(1,5);
E(1)=TestDSTPS(N);
E(2)=TestBlockLU(N);
E(3)=TestIPS(N);
E(4)=TestPSGS(N);
E(5)=TestPSJacobi(N);
