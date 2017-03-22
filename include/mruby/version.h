/*
** mruby/version.h - mruby version definition
**
** See Copyright Notice in mruby.h
*/

#ifndef MRUBY_VERSION_H
#define MRUBY_VERSION_H

#include "mruby/common.h"

/**
 * @file mruby/version.h
 * @brief MRuby version macros
 * @defgroup mrb_string MRuby version macros
 * @ingroup MRuby
 * @{
 */
MRB_BEGIN_DECL

#define MRB_STRINGIZE0(expr) #expr
#define MRB_STRINGIZE(expr) MRB_STRINGIZE0(expr)

#define MRUBY_RUBY_VERSION "1.9"
#define MRUBY_RUBY_ENGINE  "mruby"

#define MRUBY_RELEASE_MAJOR 1
#define MRUBY_RELEASE_MINOR 1
#define MRUBY_RELEASE_TEENY 1

#define MRUBY_VERSION MRB_STRINGIZE(MRUBY_RELEASE_MAJOR) "." MRB_STRINGIZE(MRUBY_RELEASE_MINOR) "." MRB_STRINGIZE(MRUBY_RELEASE_TEENY)
#define MRUBY_RELEASE_NO (MRUBY_RELEASE_MAJOR * 100 * 100 + MRUBY_RELEASE_MINOR * 100 + MRUBY_RELEASE_TEENY)
#define MRUBY_RELEASE_YEAR 2014
#define MRUBY_RELEASE_MONTH 11
#define MRUBY_RELEASE_DAY 19
#define MRUBY_RELEASE_DATE MRB_STRINGIZE(MRUBY_RELEASE_YEAR) "-" MRB_STRINGIZE(MRUBY_RELEASE_MONTH) "-" MRB_STRINGIZE(MRUBY_RELEASE_DAY)

#define MRUBY_BIRTH_YEAR 2010

#define MRUBY_AUTHOR "mruby developers"


#define MRUBY_DESCRIPTION      \
  "mruby " MRUBY_VERSION       \
  " (" MRUBY_RELEASE_DATE ") " \

#define MRUBY_COPYRIGHT                \
  "mruby - Copyright (c) "             \
  MRB_STRINGIZE(MRUBY_BIRTH_YEAR)"-"   \
  MRB_STRINGIZE(MRUBY_RELEASE_YEAR)" " \
  MRUBY_AUTHOR                         \

/** @} */
MRB_END_DECL

#endif  /* MRUBY_VERSION_H */
