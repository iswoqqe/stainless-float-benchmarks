; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1311 () Bool)

(assert start!1311)

(declare-fun res!4919 () Bool)

(declare-fun e!3372 () Bool)

(assert (=> start!1311 (=> (not res!4919) (not e!3372))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1311 (= res!4919 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1311 e!3372))

(assert (=> start!1311 true))

(declare-datatypes ((array!556 0))(
  ( (array!557 (arr!250 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!250 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!556)

(declare-fun array_inv!200 (array!556) Bool)

(assert (=> start!1311 (array_inv!200 xx!37)))

(declare-fun b!6062 () Bool)

(declare-fun res!4920 () Bool)

(assert (=> b!6062 (=> (not res!4920) (not e!3372))))

(declare-fun xxInv!0 (array!556) Bool)

(assert (=> b!6062 (= res!4920 (xxInv!0 xx!37))))

(declare-fun lt!3320 () (_ BitVec 32))

(declare-fun b!6063 () Bool)

(declare-fun lt!3321 () (_ BitVec 32))

(assert (=> b!6063 (= e!3372 (and (= (bvsub e!10 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!3321 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!3321) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (= (bvand lt!3320 #b10000000000000000000000000000000) (bvand jz!27 #b10000000000000000000000000000000)) (not (= (bvand lt!3320 #b10000000000000000000000000000000) (bvand (bvadd lt!3320 jz!27) #b10000000000000000000000000000000)))))))

(assert (=> b!6063 (= lt!3321 (bvsdiv (bvsub e!10 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (=> b!6063 (= lt!3320 (bvsub (size!250 xx!37) #b00000000000000000000000000000001))))

(assert (= (and start!1311 res!4919) b!6062))

(assert (= (and b!6062 res!4920) b!6063))

(declare-fun m!10021 () Bool)

(assert (=> start!1311 m!10021))

(declare-fun m!10023 () Bool)

(assert (=> b!6062 m!10023))

(check-sat (not start!1311) (not b!6062))
(check-sat)
(get-model)

(declare-fun d!2715 () Bool)

(assert (=> d!2715 (= (array_inv!200 xx!37) (bvsge (size!250 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1311 d!2715))

(declare-fun d!2717 () Bool)

(declare-fun res!4923 () Bool)

(declare-fun e!3375 () Bool)

(assert (=> d!2717 (=> (not res!4923) (not e!3375))))

(assert (=> d!2717 (= res!4923 (= (size!250 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!2717 (= (xxInv!0 xx!37) e!3375)))

(declare-fun b!6066 () Bool)

(declare-fun lambda!233 () Int)

(declare-fun all5!0 (array!556 Int) Bool)

(assert (=> b!6066 (= e!3375 (all5!0 xx!37 lambda!233))))

(assert (= (and d!2717 res!4923) b!6066))

(declare-fun m!10025 () Bool)

(assert (=> b!6066 m!10025))

(assert (=> b!6062 d!2717))

(check-sat (not b!6066))
(check-sat)
