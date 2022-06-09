resource "intersight_macpool_pool" "PodXX_MAC_POOL" {  
  name = "PodXX_MAC_POOL"

  mac_blocks {
    from = "00:03:XX:00:00:00"
    size = 1000
  }
}

# resource "intersight_macpool_pool" "PodXX_MAC_POOL_FOREACH" {  
#   for_each = {
#       FIRST = "A"
#       SECOND = "B"
#   }
#   name = "PodXX_MAC_POOL_${each.key}"

#   mac_blocks {
#     from = "00:0${each.value}:00:00:00:00"
#     size = 1000
#   }
# }
