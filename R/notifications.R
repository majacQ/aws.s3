#' @rdname notifications
#' @title Notifications
#' @description Get/put the notification configuration for a bucket.
#'
#' @template bucket
#' @param request_body A character string containing an XML request body, as defined in the specification in the \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotificationConfiguration.html}{API Documentation}.
#' @template dots
#'
#' @return A list containing the notification configuration, if one has been set.
#' @references 
#' \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketNotificationConfiguration.html}{API Documentation: GET}
#' \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotificationConfiguration.html}{API Documentation: PUT}
#' @export
get_notification <- function(bucket, ...){
    r <- s3HTTP(verb = "GET", 
                bucket = bucket,
                query = list(notification = ""),
                ...)
    return(r)
}

#' @rdname notifications
#' @export
put_notification <- function(bucket, request_body, ...){
    r <- s3HTTP(verb = "PUT", 
                bucket = bucket,
                query = list(notification = ""),
                request_body = request_body,
                ...)
    structure(r, class = "s3_bucket")
}
