package com.ziyan.utils;

public class BaseException extends Exception{
    public BaseException(String str){
        super(str);
    }
    public BaseException(){

    }

    public  static void NullPoint() throws BaseException {
       throw  new BaseException("空指针异常");
    }
}
