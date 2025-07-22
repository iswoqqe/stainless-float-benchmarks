; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1703 () Bool)

(assert start!1703)

(declare-fun res!7264 () Bool)

(declare-fun e!4952 () Bool)

(assert (=> start!1703 (=> (not res!7264) (not e!4952))))

(declare-fun jz!32 () (_ BitVec 32))

(declare-fun e!15 () (_ BitVec 32))

(assert (=> start!1703 (= res!7264 (and (bvsle #b00000000000000000000000000000000 jz!32) (bvsle jz!32 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!15) (bvsle e!15 #b00000000000000000000001111110000) (= (bvsrem e!15 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1703 e!4952))

(assert (=> start!1703 true))

(declare-datatypes ((array!684 0))(
  ( (array!685 (arr!301 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!301 (_ BitVec 32))) )
))
(declare-fun xx!44 () array!684)

(declare-fun array_inv!251 (array!684) Bool)

(assert (=> start!1703 (array_inv!251 xx!44)))

(declare-fun b!8872 () Bool)

(declare-fun res!7263 () Bool)

(assert (=> b!8872 (=> (not res!7263) (not e!4952))))

(declare-fun xxInv!0 (array!684) Bool)

(assert (=> b!8872 (= res!7263 (xxInv!0 xx!44))))

(declare-fun i!179 () (_ BitVec 32))

(declare-fun lt!4455 () (_ BitVec 32))

(declare-fun b!8873 () Bool)

(assert (=> b!8873 (= e!4952 (and (= (bvsub e!15 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4455 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4455) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 i!179) (let ((lhs!48 (bvadd (bvsub (size!301 xx!44) #b00000000000000000000000000000001) jz!32))) (and (= (bvand lhs!48 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand lhs!48 #b10000000000000000000000000000000) (bvand (bvadd lhs!48 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))))

(assert (=> b!8873 (= lt!4455 (bvsdiv (bvsub e!15 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(assert (= (and start!1703 res!7264) b!8872))

(assert (= (and b!8872 res!7263) b!8873))

(declare-fun m!13349 () Bool)

(assert (=> start!1703 m!13349))

(declare-fun m!13351 () Bool)

(assert (=> b!8872 m!13351))

(check-sat (not b!8872) (not start!1703))
(check-sat)
(get-model)

(declare-fun d!3807 () Bool)

(declare-fun res!7267 () Bool)

(declare-fun e!4955 () Bool)

(assert (=> d!3807 (=> (not res!7267) (not e!4955))))

(assert (=> d!3807 (= res!7267 (= (size!301 xx!44) #b00000000000000000000000000000101))))

(assert (=> d!3807 (= (xxInv!0 xx!44) e!4955)))

(declare-fun b!8876 () Bool)

(declare-fun lambda!460 () Int)

(declare-fun all5!0 (array!684 Int) Bool)

(assert (=> b!8876 (= e!4955 (all5!0 xx!44 lambda!460))))

(assert (= (and d!3807 res!7267) b!8876))

(declare-fun m!13353 () Bool)

(assert (=> b!8876 m!13353))

(assert (=> b!8872 d!3807))

(declare-fun d!3809 () Bool)

(assert (=> d!3809 (= (array_inv!251 xx!44) (bvsge (size!301 xx!44) #b00000000000000000000000000000000))))

(assert (=> start!1703 d!3809))

(check-sat (not b!8876))
(check-sat)
