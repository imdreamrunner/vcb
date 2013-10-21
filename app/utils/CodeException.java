package utils;

public class CodeException extends Exception {
    private Integer code;
    private String message;

    public CodeException(Integer errorCode) {
        code = errorCode;
        message = "";
    }

    public CodeException(Integer errorCode, String errorMessage) {
        code = errorCode;
        message = errorMessage;
    }

    public Integer getCode() {
        return code;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
