; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1295 () Bool)

(assert start!1295)

(declare-fun res!4880 () Bool)

(declare-fun e!3332 () Bool)

(assert (=> start!1295 (=> (not res!4880) (not e!3332))))

(declare-fun jz!27 () (_ BitVec 32))

(declare-fun e!10 () (_ BitVec 32))

(assert (=> start!1295 (= res!4880 (and (bvsle #b00000000000000000000000000000000 jz!27) (bvsle jz!27 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!10) (bvsle e!10 #b00000000000000000000001111110000) (= (bvsrem e!10 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1295 e!3332))

(assert (=> start!1295 true))

(declare-datatypes ((array!543 0))(
  ( (array!544 (arr!244 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!244 (_ BitVec 32))) )
))
(declare-fun xx!37 () array!543)

(declare-fun array_inv!194 (array!543) Bool)

(assert (=> start!1295 (array_inv!194 xx!37)))

(declare-fun b!6023 () Bool)

(declare-fun res!4881 () Bool)

(assert (=> b!6023 (=> (not res!4881) (not e!3332))))

(declare-fun xxInv!0 (array!543) Bool)

(assert (=> b!6023 (= res!4881 (xxInv!0 xx!37))))

(declare-fun b!6024 () Bool)

(assert (=> b!6024 (= e!3332 (and (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) #b00000000000000000000000000000000)) (not (= (bvand (size!244 xx!37) #b10000000000000000000000000000000) (bvand (bvsub (size!244 xx!37) #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(assert (= (and start!1295 res!4880) b!6023))

(assert (= (and b!6023 res!4881) b!6024))

(declare-fun m!9995 () Bool)

(assert (=> start!1295 m!9995))

(declare-fun m!9997 () Bool)

(assert (=> b!6023 m!9997))

(check-sat (not start!1295) (not b!6023))
(check-sat)
(get-model)

(declare-fun d!2711 () Bool)

(assert (=> d!2711 (= (array_inv!194 xx!37) (bvsge (size!244 xx!37) #b00000000000000000000000000000000))))

(assert (=> start!1295 d!2711))

(declare-fun d!2713 () Bool)

(declare-fun res!4884 () Bool)

(declare-fun e!3336 () Bool)

(assert (=> d!2713 (=> (not res!4884) (not e!3336))))

(assert (=> d!2713 (= res!4884 (= (size!244 xx!37) #b00000000000000000000000000000101))))

(assert (=> d!2713 (= (xxInv!0 xx!37) e!3336)))

(declare-fun b!6027 () Bool)

(declare-fun lambda!230 () Int)

(declare-fun all5!0 (array!543 Int) Bool)

(assert (=> b!6027 (= e!3336 (all5!0 xx!37 lambda!230))))

(assert (= (and d!2713 res!4884) b!6027))

(declare-fun m!9999 () Bool)

(assert (=> b!6027 m!9999))

(assert (=> b!6023 d!2713))

(check-sat (not b!6027))
(check-sat)
