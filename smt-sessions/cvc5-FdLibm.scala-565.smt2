; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!3135 () Bool)

(assert start!3135)

(assert (=> start!3135 false))

(declare-datatypes ((array!1396 0))(
  ( (array!1397 (arr!610 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!610 (_ BitVec 32))) )
))
(declare-fun q!40 () array!1396)

(declare-fun array_inv!558 (array!1396) Bool)

(assert (=> start!3135 (array_inv!558 q!40)))

(declare-fun bs!3532 () Bool)

(assert (= bs!3532 start!3135))

(declare-fun m!28173 () Bool)

(assert (=> bs!3532 m!28173))

(push 1)

(assert (not start!3135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

