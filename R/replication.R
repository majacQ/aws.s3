#' @rdname replication
#' @title Bucket replication
#' @description Get/Delete the replication configuration for a bucket.
#' @details \code{get_replication} gets the current replication policy. \code{delete_replication} deletes the replication policy for a bucket.
#'
#' @template bucket
#' @param request_body A character string containing an XML request body, as defined in the specification in the \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html}{API Documentation}.
#' @template dots
#'
#' @return For \code{get_replication}: A list containing the replication configuration, if one has been set. For \code{delete_replication}: \code{TRUE} if successful, \code{FALSE} otherwise.
#' @references
#' \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html}{API Documentation: PUT replication}
#' \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html}{API Documentation: GET replication}
#' \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html}{API Documentation: DELETE replication}
#' @export
get_replication <- function(bucket, ...){
    r <- s3HTTP(verb = "GET", 
                bucket = bucket,
                query = list(replication = ""),
                ...)
    return(r)
}

#' @rdname replication
#' @export
put_replication <- function(bucket, request_body, ...){
    r <- s3HTTP(verb = "GET", 
                bucket = bucket,
                query = list(replication = ""),
                request_body = request_body,
                ...)
    return(r)
}

#' @rdname replication
#' @export
delete_replication <- function(bucket, ...){
    r <- s3HTTP(verb = "DELETE", 
                bucket = bucket,
                query = list(replication = ""),
                parse_response = FALSE,
                ...)
    return(r)
}
