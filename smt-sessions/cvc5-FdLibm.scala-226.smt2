; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1359 () Bool)

(assert start!1359)

(declare-fun res!5434 () Bool)

(declare-fun e!3460 () Bool)

(assert (=> start!1359 (=> (not res!5434) (not e!3460))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1359 (= res!5434 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1359 e!3460))

(assert (=> start!1359 true))

(declare-datatypes ((array!551 0))(
  ( (array!552 (arr!244 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!244 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!551)

(declare-fun array_inv!194 (array!551) Bool)

(assert (=> start!1359 (array_inv!194 xx!37)))

(declare-fun b!6637 () Bool)

(declare-fun res!5435 () Bool)

(assert (=> b!6637 (=> (not res!5435) (not e!3460))))

(declare-fun xxInv!0 (array!551) Bool)

(assert (=> b!6637 (= res!5435 (xxInv!0 xx!37))))

(declare-fun b!6638 () Bool)

(assert (=> b!6638 (= e!3460 (and (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) (bvand (bvsub (size!244 xx!37) #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!1359 res!5434) b!6637))

(assert (= (and b!6637 res!5435) b!6638))

(declare-fun m!13143 () Bool)

(assert (=> start!1359 m!13143))

(declare-fun m!13145 () Bool)

(assert (=> b!6637 m!13145))

(push 1)

(assert (not b!6637))

(assert (not start!1359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!4132 () Bool)

(declare-fun res!5438 () Bool)

(declare-fun e!3464 () Bool)

(assert (=> d!4132 (=> (not res!5438) (not e!3464))))

(assert (=> d!4132 (= res!5438 (= (size!244 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!4132 (= (xxInv!0 xx!37) e!3464)))

(declare-fun b!6641 () Bool)

(declare-fun lambda!256 () Int)

(declare-fun all5!0 (array!551 Int) Bool)

(assert (=> b!6641 (= e!3464 (all5!0 xx!37 lambda!256))))

(assert (= (and d!4132 res!5438) b!6641))

(declare-fun m!13147 () Bool)

(assert (=> b!6641 m!13147))

(assert (=> b!6637 d!4132))

(declare-fun d!4134 () Bool)

(assert (=> d!4134 (= (array_inv!194 xx!37) (bvsge (size!244 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1359 d!4134))

(push 1)

(assert (not b!6641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

