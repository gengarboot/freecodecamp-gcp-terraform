# Bucket to store website

resource "google_storage_bucket" "website" {
    name = "example-website-freecodecamp-gengarboot-v1"
    location = "EU"
}

# Make new objects public
resource "google_storage_object_access_control" "public_rule" {
  object = google_storage_bucket_object.static_site_src.name
  bucket = google_storage_bucket.website.name
  role = "READER"
  entity = "allUsers"
}

# Upload html file to bucket
resource "google_storage_bucket_object" "static_site_src" {
    name = "index.html"
    source = "../website/index.html"
    bucket = google_storage_bucket.website.name
}
