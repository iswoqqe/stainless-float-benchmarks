; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2953 () Bool)

(assert start!2953)

(declare-fun b_free!47 () Bool)

(declare-fun b_next!47 () Bool)

(assert (=> start!2953 (= b_free!47 (not b_next!47))))

(declare-fun tp!71 () Bool)

(declare-fun b_and!447 () Bool)

(assert (=> start!2953 (= tp!71 b_and!447)))

(declare-fun res!13076 () Bool)

(declare-fun e!9101 () Bool)

(assert (=> start!2953 (=> (not res!13076) (not e!9101))))

(declare-datatypes ((array!1387 0))(
  ( (array!1388 (arr!612 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!612 (_ BitVec 32))) )
))
(declare-fun a!12 () array!1387)

(assert (=> start!2953 (= res!13076 (= (size!612 a!12) #b00000000000000000000000000010100))))

(assert (=> start!2953 e!9101))

(declare-fun array_inv!560 (array!1387) Bool)

(assert (=> start!2953 (array_inv!560 a!12)))

(assert (=> start!2953 tp!71))

(declare-fun b!16488 () Bool)

(declare-fun res!13077 () Bool)

(assert (=> b!16488 (=> (not res!13077) (not e!9101))))

(declare-fun P!5 () Int)

(declare-fun dynLambda!61 (Int (_ FloatingPoint 11 53)) Bool)

(assert (=> b!16488 (= res!13077 (dynLambda!61 P!5 (select (arr!612 a!12) #b00000000000000000000000000000000)))))

(declare-fun b!16489 () Bool)

(assert (=> b!16489 (= e!9101 (bvsge #b00000000000000000000000000000001 (size!612 a!12)))))

(assert (= (and start!2953 res!13076) b!16488))

(assert (= (and b!16488 res!13077) b!16489))

(declare-fun b_lambda!5701 () Bool)

(assert (=> (not b_lambda!5701) (not b!16488)))

(declare-fun t!591 () Bool)

(declare-fun tb!401 () Bool)

(assert (=> (and start!2953 (= P!5 P!5) t!591) tb!401))

(declare-fun result!401 () Bool)

(assert (=> tb!401 (= result!401 true)))

(assert (=> b!16488 t!591))

(declare-fun b_and!449 () Bool)

(assert (= b_and!447 (and (=> t!591 result!401) b_and!449)))

(declare-fun m!22999 () Bool)

(assert (=> start!2953 m!22999))

(declare-fun m!23001 () Bool)

(assert (=> b!16488 m!23001))

(assert (=> b!16488 m!23001))

(declare-fun m!23003 () Bool)

(assert (=> b!16488 m!23003))

(check-sat (not start!2953) (not b_lambda!5701) b_and!449 (not b_next!47))
(check-sat b_and!449 (not b_next!47))
