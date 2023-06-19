

#include <cstdlib>
#include <fstream>
#include <iostream>
#include <cstring>
using namespace std;


int main(int argc, char** argv) {
    
     ifstream arch("ubigeo_distrito-csv.txt",ios::in);
    if(!arch.is_open()){
        cout<<"Error al albrir el archivo";
        exit(1);
    }
     ofstream archR("insert-distritos.txt",ios::out);
     if(!archR.is_open()){
        cout<<"Error al albrir el archivo";
        exit(1);
    }
    char cod[7];
    char dep[60];
    char pro[60];
    char distri[70];
    char c;
    while(1){
        arch.getline(cod,7,',');
           if (arch.eof()) break;
        arch.getline(dep,60,',');
        arch.getline(pro,60,',');
        arch.getline(distri,70,',');
           archR<<"insert into DISTRITO(ID_DISTRITO,NOMBRE,ID_PROVINCIA) values('"<<cod<<"','"<<distri<<"','"<<cod[0]<<cod[1]<<cod[2]<<cod[3]<<"');"<<endl;
           arch.ignore(150,'\n');
    }
    
    
    return 0;
}

