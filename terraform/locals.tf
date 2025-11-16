locals {
  # Simple MIME type lookup table
  mime_types = {
    html = "text/html"
    css  = "text/css"
    js   = "application/javascript"
    json = "application/json"
    png  = "image/png"
    jpg  = "image/jpeg"
    jpeg = "image/jpeg"
    gif  = "image/gif"
    svg  = "image/svg+xml"
    txt  = "text/plain"
    pdf  = "application/pdf"
    ico  = "image/x-icon"
  }

  # Get list of all files in the site directory
  site_files = fileset("../site", "**/*")

  # Build a map where key = file path, value = object with file info
  site_file_objects = {
    for f in local.site_files : f => {
      file_path    = "../site/${f}"
      extension    = lower(regex("[^.]*$", f))
      content_type = lookup(local.mime_types, lower(regex("[^.]*$", f)), "application/octet-stream")
    }
  }
}