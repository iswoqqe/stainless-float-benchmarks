; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1369 () Bool)

(assert start!1369)

(declare-fun res!5456 () Bool)

(declare-fun e!3481 () Bool)

(assert (=> start!1369 (=> (not res!5456) (not e!3481))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1369 (= res!5456 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1369 e!3481))

(assert (=> start!1369 true))

(declare-datatypes ((array!558 0))(
  ( (array!559 (arr!247 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!247 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!558)

(declare-fun array_inv!197 (array!558) Bool)

(assert (=> start!1369 (array_inv!197 xx!37)))

(declare-fun b!6658 () Bool)

(declare-fun res!5455 () Bool)

(assert (=> b!6658 (=> (not res!5455) (not e!3481))))

(declare-fun xxInv!0 (array!558) Bool)

(assert (=> b!6658 (= res!5455 (xxInv!0 xx!37))))

(declare-fun b!6659 () Bool)

(declare-fun lt!3433 () (_ BitVec 32))

(assert (=> b!6659 (= e!3481 (not (= lt!3433 (bvsdiv (bvmul #b00000000000000000000000000011000 lt!3433) #b00000000000000000000000000011000))))))

(declare-fun lt!3434 () (_ BitVec 32))

(assert (=> b!6659 (= lt!3433 (bvadd (ite (bvslt lt!3434 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3434) #b00000000000000000000000000000001))))

(assert (=> b!6659 (= lt!3434 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1369 res!5456) b!6658))

(assert (= (and b!6658 res!5455) b!6659))

(declare-fun m!13157 () Bool)

(assert (=> start!1369 m!13157))

(declare-fun m!13159 () Bool)

(assert (=> b!6658 m!13159))

(push 1)

(assert (not b!6658))

(assert (not start!1369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

