; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1321 () Bool)

(assert start!1321)

(declare-fun res!5218 () Bool)

(declare-fun e!3403 () Bool)

(assert (=> start!1321 (=> (not res!5218) (not e!3403))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1321 (= res!5218 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1321 e!3403))

(assert (=> start!1321 true))

(declare-datatypes ((array!546 0))(
  ( (array!547 (arr!244 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!244 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!546)

(declare-fun array_inv!194 (array!546) Bool)

(assert (=> start!1321 (array_inv!194 xx!37)))

(declare-fun b!6391 () Bool)

(declare-fun res!5219 () Bool)

(assert (=> b!6391 (=> (not res!5219) (not e!3403))))

(declare-fun xxInv!0 (array!546) Bool)

(assert (=> b!6391 (= res!5219 (xxInv!0 xx!37))))

(declare-fun b!6392 () Bool)

(assert (=> b!6392 (= e!3403 (and (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) (bvand (bvsub (size!244 xx!37) #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!1321 res!5218) b!6391))

(assert (= (and b!6391 res!5219) b!6392))

(declare-fun m!11819 () Bool)

(assert (=> start!1321 m!11819))

(declare-fun m!11821 () Bool)

(assert (=> b!6391 m!11821))

(check-sat (not start!1321) (not b!6391))
(check-sat)
(get-model)

(declare-fun d!3417 () Bool)

(assert (=> d!3417 (= (array_inv!194 xx!37) (bvsge (size!244 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1321 d!3417))

(declare-fun d!3419 () Bool)

(declare-fun res!5222 () Bool)

(declare-fun e!3407 () Bool)

(assert (=> d!3419 (=> (not res!5222) (not e!3407))))

(assert (=> d!3419 (= res!5222 (= (size!244 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!3419 (= (xxInv!0 xx!37) e!3407)))

(declare-fun b!6395 () Bool)

(declare-fun lambda!248 () Int)

(declare-fun all5!0 (array!546 Int) Bool)

(assert (=> b!6395 (= e!3407 (all5!0 xx!37 lambda!248))))

(assert (= (and d!3419 res!5222) b!6395))

(declare-fun m!11823 () Bool)

(assert (=> b!6395 m!11823))

(assert (=> b!6391 d!3419))

(check-sat (not b!6395))
(check-sat)
