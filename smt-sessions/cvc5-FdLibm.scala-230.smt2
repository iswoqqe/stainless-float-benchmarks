; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1371 () Bool)

(assert start!1371)

(declare-fun res!5462 () Bool)

(declare-fun e!3488 () Bool)

(assert (=> start!1371 (=> (not res!5462) (not e!3488))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1371 (= res!5462 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1371 e!3488))

(assert (=> start!1371 true))

(declare-datatypes ((array!560 0))(
  ( (array!561 (arr!248 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!248 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!560)

(declare-fun array_inv!198 (array!560) Bool)

(assert (=> start!1371 (array_inv!198 xx!37)))

(declare-fun b!6664 () Bool)

(declare-fun res!5461 () Bool)

(assert (=> b!6664 (=> (not res!5461) (not e!3488))))

(declare-fun xxInv!0 (array!560) Bool)

(assert (=> b!6664 (= res!5461 (xxInv!0 xx!37))))

(declare-fun b!6665 () Bool)

(declare-fun lt!3439 () (_ BitVec 32))

(assert (=> b!6665 (= e!3488 (and (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand lt!3439 #b10000000000000000000000000000000))) (not (= (bvand e!10 #b10000000000000000000000000000000) (bvand (bvsub e!10 lt!3439) #b10000000000000000000000000000000)))))))

(declare-fun lt!3440 () (_ BitVec 32))

(assert (=> b!6665 (= lt!3439 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3440 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3440) #b00000000000000000000000000000001)))))

(assert (=> b!6665 (= lt!3440 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1371 res!5462) b!6664))

(assert (= (and b!6664 res!5461) b!6665))

(declare-fun m!13161 () Bool)

(assert (=> start!1371 m!13161))

(declare-fun m!13163 () Bool)

(assert (=> b!6664 m!13163))

(push 1)

(assert (not b!6664))

(assert (not start!1371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

