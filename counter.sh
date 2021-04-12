buildid()
{
  [ -f $BUILDID_FILE ] || echo -n "0" >$BUILDID_FILE
  local id
  read id <$BUILDID_FILE
  let id=$id+1
  [ $id -gt 9999 ] && id=1
  echo -n $id >$BUILDID_FILE
  echo $id
}
 
BUILDID_FILE=/etc/.buildid
