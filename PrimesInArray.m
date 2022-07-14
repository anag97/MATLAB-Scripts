% Program that finds prime numbers in an array, removes all other values from array

A = [1:40]

for i=1:length(A)-1;
    if i>length(A)
        break;
    end
    if A(i)==1;
        A(i)=[]
    end
end
for i=1:length(A)-1;
    if i>length(A)
        break;
    end
    if mod(A(i),2)==0&&A(i)~=2;
        A(i)=[]
    end
end

for i=1:length(A)-1;
    if i>length(A)
        break;
    end
    if mod(A(i),3)==0&&A(i)~=3;
        A(i)=[]
    end
end

for i=1:length(A)-1;
    if i>length(A)
        break;
    end
    if mod(A(i),5)==0&&A(i)~=5;
        A(i)=[]
    end
end
        


