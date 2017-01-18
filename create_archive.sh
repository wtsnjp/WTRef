#!/bin/sh

PACKAGE=wtref
TMPDIR=~/tmp

if [ -e $PACKAGE.zip ]; then
  echo "* Error: Archive already exists"
  exit 1
fi

PWDF=`pwd`
TARGET=$TMPDIR/$PACKAGE

echo "* Create $PACKAGE.zip"
mkdir -p $TARGET && cp -r $PWDF/* $TARGET
mv $TARGET/doc/*.{tex,pdf} $TARGET
rm $TARGET/create_archive.sh
rm -rf $TARGET/{test,doc}

cd $TMPDIR && zip -r $PWDF/$PACKAGE.zip $PACKAGE
rm -rf $TARGET
echo "* Done"
