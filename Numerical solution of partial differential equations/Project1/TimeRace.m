function E=TimeRace(N) 

E=zeros(1,5);
E(1)=TimeTestDSTPS(N);
E(2)=TimeTestBlockLU(N);
E(3)=TimeTestIPS(N);
E(4)=TimeTestPSGS(N);
E(5)=TimeTestPSJacobi(N);
