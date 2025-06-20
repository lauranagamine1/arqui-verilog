//
// Created by laura on 21/05/2025.
//
#include <iostream>
using namespace std;

void selection_sort(int* array, int size) {
    if (size < 2){
    } else{
        for (int i = 0; i < size - 1; ++i) {
            int min = i;
            for (int j = i + 1; j < size; ++j) {
                if (array[j] < array[min]) {
                    min = j;
                }
            }
            if (min != i) {
                int tmp        = array[i];
                array[i]       = array[min];
                array[min] = tmp;
            }
        }
    }


}

void print(int* array, int size){
    for(int i=0; i<size;++i){
        cout<<array[i]<<" ";
    }
}

int main(){
    int arr[3]  = {2,3,1};
    selection_sort(arr, 3);
    print(arr,3);
}