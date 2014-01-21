$logger_depth = 0
def log name,&block
  front_indent = "  " * $logger_depth
  puts front_indent + "Beginning #{name} ..."
  $logger_depth += 1
  return_status = block.call
  $logger_depth -= 1
  puts front_indent + "...\"#{name}\" finished, returning \n #{return_status}"
end

log "outer block" do
  log "some little block" do
    2 + 3
  end
  log "yet another block" do
    "I like thai food"
  end
  2 > 3
end