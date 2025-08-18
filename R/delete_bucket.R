#' @title Delete Bucket
#' @description Deletes an S3 bucket.
#'
#' @template bucket
#' @template dots
#'
#' @return \code{TRUE} if successful, \code{FALSE} otherwise. 
#' @references \href{https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html}{API Documentation}
#' @export
delete_bucket <- function(bucket, ...){
    r <- s3HTTP(verb = "DELETE", 
                bucket = bucket,
                parse_response = FALSE,
                ...)
    return(r)
}
