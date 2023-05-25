#include <glog/logging.h>

int main(int argc, char* argv[]) {


    google::SetStderrLogging(google::INFO); //设置级别高于 google::INFO 的日志同时输出到屏幕  
    FLAGS_colorlogtostderr=true;    //设置输出到屏幕的日志显示相应颜色  
    // //google::SetLogDestination(google::ERROR,”log/error_”);    //设置 google::ERROR 级别的日志存储路径和文件名前缀  
    // google::SetLogDestination(google::INFO,LOGDIR”/INFO_”); //设置 google::INFO 级别的日志存储路径和文件名前缀  
    // google::SetLogDestination(google::WARNING,LOGDIR”/WARNING_”);   //设置 google::WARNING 级别的日志存储路径和文件名前缀  
    // google::SetLogDestination(google::ERROR,LOGDIR”/ERROR_”);   //设置 google::ERROR 级别的日志存储路径和文件名前缀  
    // FLAGS_logbufsecs =0;        //缓冲日志输出，默认为30秒，此处改为立即输出  
    // FLAGS_max_log_size =100;  //最大日志大小为 100MB  
    // FLAGS_stop_logging_if_full_disk = true;     //当磁盘被写满时，停止日志输出  
    // google::SetLogFilenameExtension(”91_”);     //设置文件名扩展，如平台？或其它需要区分的信息  
    google::InstallFailureSignalHandler();      //捕捉 core dumped  
    // google::InstallFailureWriter(&SignalHandle);    //默认捕捉 SIGSEGV 信号信息输出会输出到 stderr，可以通过下面的方法自定义输出>方式：  
    // Initialize Google’s logging library.
    google::InitGoogleLogging(argv[0]);
    FLAGS_colorlogtostderr=true; 
    LOG(ERROR) << "ERROR" ;
    LOG(WARNING) << "WARNING";
    LOG(INFO) << "INFO";
    // LOG(FATAL) << "FATAL";
}